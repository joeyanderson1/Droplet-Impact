% Initialize video reader
a = VideoReader('C:\Users\josep\Desktop\Droplet Summer Research\Pictures\Experiment Video.mp4');
ilim = a.NumFrames;

% Get the dimensions of the video
videoWidth = a.Width;
videoHeight = a.Height;

% Initialize video writer
writer = VideoWriter('outputVideo');
writer.FrameRate = 1; % 240 FPS
open(writer)

% Create figure for visualization
h1 = figure;
h1.Position = [100 100 1000 400];
ax1 = axes('Parent', h1);

% Define cropping rectangle [xmin ymin width height]
cropRect = [200 0 videoWidth-200 videoHeight]; 

for i = 1:ilim
    
    % Read the i-th frame
    b = read(a, i);
    
    % Crop the frame
    bCropped = imcrop(b, cropRect);
    
    % Convert to grayscale
    I = rgb2gray(bCropped);
    %I = rgb2gray(b);

    % Edge detection of entire shape
    [~, threshold] = edge(I, 'sobel');
    fudgeFactor = 0.15;
    BWs = edge(I, 'sobel', threshold * fudgeFactor);

    % Dilate the image
    se90 = strel('line', 3, 90);
    se0 = strel('line', 3, 0);
    BWsdil = imdilate(BWs, [se90 se0]);

    % Fill interior gaps
    BWdfill = imfill(BWsdil, 'holes');

    % Remove Connected Objects on Border
    % BWnobord = imclearborder(BWdfill, 4);

    % Smooth the Object
    seD = strel('diamond', 1);
    BWfinal = imerode(BWdfill, seD);
    BWfinal = imerode(BWfinal, seD);

    % Store the edge map in the array
    processedEdges{i} = BWfinal;

    % Visualize the Segmentation
    c = labeloverlay(I, BWfinal);
    imagesc(c, 'Parent', ax1);
    axis equal;
    set(gca, 'ylim', [0 900]);
    set(gca, 'xtick', []);
    set(gca, 'ytick', []);

    % Capture the frame
    now_frame = getframe(gcf);
    writeVideo(writer, now_frame);
    drawnow;
end

% Close the video writer
close(writer);

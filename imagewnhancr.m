
function varargout = imagewnhancr(varargin)
% IMAGEWNHANCR MATLAB code for imagewnhancr.fig
%      IMAGEWNHANCR, by itself, creates a new IMAGEWNHANCR or raises the existing
%      singleton*.
%
%      H = IMAGEWNHANCR returns the handle to a new IMAGEWNHANCR or the handle to
%      the existing singleton*.
%
%      IMAGEWNHANCR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMAGEWNHANCR.M with the given input arguments.
%
%      IMAGEWNHANCR('Property','Value',...) creates a new IMAGEWNHANCR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before imagewnhancr_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to imagewnhancr_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help imagewnhancr

% Last Modified by GUIDE v2.5 27-Aug-2017 03:12:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @imagewnhancr_OpeningFcn, ...
                   'gui_OutputFcn',  @imagewnhancr_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before imagewnhancr is made visible.
function imagewnhancr_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to imagewnhancr (see VARARGIN)


 
% create an axes that spans the whole gui 
ah = axes('unit', 'normalized', 'position', [0 0 1 1]);  
% import the background image and show it on the axes 
bg = imread('back.jpg'); imagesc(bg); 
% prevent plotting over the background and turn the axis off 
set(ah,'handlevisibility','off','visible','off') 
% making sure the background is behind all the other uicontrols 
uistack(ah, 'bottom'); 
 
% Choose default command line output for imagewnhancr 
handles.output = hObject; 
axes(handles.axes3) 
imshow('logo.gif') 
% Update handles structure 
guidata(hObject, handles); 
 
% UIWAIT makes imagewnhancr wait for user response (see UIRESUME) 
% uiwait(handles.figure1); 
 
 
% --- Outputs from this function are returned to the command line. 
function varargout = imagewnhancr_OutputFcn(hObject, eventdata, handles)  
% varargout  cell array for returning output args (see VARARGOUT); 
% hObject    handle to figure 
% eventdata  reserved - to be defined in a future version of MATLAB 
% handles    structure with handles and user data (see GUIDATA) 
 
% Get default command line output from handles structure 
varargout{1} = handles.output; 
 
 
% --- Executes on button press in pushbutton1. 
function pushbutton1_Callback(hObject, eventdata, handles) 
% hObject    handle to pushbutton1 (see GCBO) 
% eventdata  reserved - to be defined in a future version of MATLAB 
% handles    structure with handles and user data (see GUIDATA) 
 
[filename ,pathname]=uigetfile({'*.jpg';'*.png';'*.bmp'},'File Selector'); 
   global image im2 
%%msgbox(sprintf('Error'),'Error','Error'); 
    %return 
%end 
ab =strcat(pathname, filename); 
image =imread(ab); 
axes(handles.axes1) 
imshow(image) 
 
%Set(handles.edit1,’string’,filename); 
%Set(handles.edit2,’string’,pathname); 
 
 
% --- Executes on button press in pushbutton2. 
function pushbutton2_Callback(hObject, eventdata, handles) 
% hObject    handle to pushbutton2 (see GCBO) 
% eventdata  reserved - to be defined in a future version of MATLAB 
% handles    structure with handles and user data (see GUIDATA) 
global image im2 
imgray =rgb2gray(image);
axes(handles.axes2); 
imshow(imgray); 
im2=imgray; 
 
% --- Executes on button press in pushbutton1. 
function pushbutton3_Callback(hObject, eventdata, handles) 
% hObject    handle to pushbutton1 (see GCBO) 
% eventdata  reserved - to be defined in a future version of MATLAB 
% handles    structure with handles and user data (see GUIDATA) 
global image im2 
imblack =im2bw(image); 
%imblack =image; 
%imblack=1-image; 
axes(handles.axes2); 
imshow(imblack); 
im2=imblack; 
 
% --- Executes on button press in radiobutton5. 
 
 
% -------------------------------------------------------------------- 
function Ejparth_1_Callback(hObject, eventdata, handles) 
% hObject    handle to Untitled_1 (see GCBO) 
% eventdata  reserved - to be defined in a future version of MATLAB 
% handles    structure with handles and user data (see GUIDATA) 
 
 
% --- Executes on button press in radiobutton4. 
% Hint: get(hObject,'Value') returns toggle state of radiobutton4 
 
 
% --- Executes on button press in pushbutton2. 
function pushbutton4_Callback(hObject, eventdata, handles) 
% hObject    handle to pushbutton2 (see GCBO) 
% eventdata  reserved - to be defined in a future version of MATLAB 
% handles    structure with handles and user data (see GUIDATA) 
global image im2 
smoothi=colorsmuth(image);  
axes(handles.axes2); 
imshow(smoothi); 
im2=smoothi; 
 
    
 
 
% --- Executes on button press in pushbutton3. 
function pushbutton5_Callback(hObject, eventdata, handles) 
% hObject    handle to pushbutton3 (see GCBO) 
% eventdata  reserved - to be defined in a fu ture version of MATLAB 
% handles    structure with handles and user data (see GUIDATA) 
global image im2 
shrp=shosho(image); 
axes(handles.axes2); 
imshow(shrp); 
im2=shrp; 
 
 
% --- Executes on button press in pushbutton3. 
function pushbutton6_Callback(hObject, eventdata, handles) 
% hObject    handle to pushbutton3 (see GCBO) 
% eventdata  reserved - to be defined in a future version of MATLAB 
% handles    structure with handles and user data (see GUIDATA) 
global image im2 
h=histo(image); 
axes(handles.axes2); 
imshow(h); 
im2=h; 
 
 
% --- Executes on button press in pushbutton7. 
function pushbutton7_Callback(hObject, eventdata, handles) 
% hObject    handle to pushbutton7 (see GCBO) 
% eventdata  reserved - to be defined in a future version of MATLAB 
% handles    structure with handles and user data (see GUIDATA) 
global image im2 
h=edgy(image); 
axes(handles.axes2); 
imshow(h); 
im2=h; 
 
% --- Executes on button press in pushbutton4. 
function pushbutton8_Callback(hObject, eventdata, handles) 
% hObject    handle to pushbutton4 (see GCBO) 
% eventdata  reserved - to be defined in a future version of MATLAB 
% handles    structure with handles and user data (see GUIDATA) 
global image im2 
h=image; 
g=rgb2hsv(h); 
axes(handles.axes2); 
imshow(g); 
im2=g; 
% --- Executes on button press in pushbutton9. 
function pushbutton9_Callback(hObject, eventdata, handles) 
% hObject    handle to pushbutton9 (see GCBO) 
% eventdata  reserved - to be defined in a future version of MATLAB 
% handles    structure with handles and user data (see GUIDATA) 
global image im2 
h=imcrop(image); 
axes(handles.axes2); 
b=imshow(h);
im2=b; 
 
 
 
% --- Executes on button press in radiobutton5. 
function radiobutton3_Callback(hObject, eventdata, handles) 
% hObject    handle to radiobutton5 (see GCBO) 
% eventdata  reserved - to be defined in a future version of MATLAB 
% handles    structure with handles and user data (see GUIDATA) 
 
% Hint: get(hObject,'Value') returns toggle state of radiobutton5 
global image im2 
h=redy(image); 
axes(handles.axes2); 
imshow(h); 
im2=h; 
 
% --- Executes on button press in radiobutton4. 
function radiobutton4_Callback(hObject, eventdata, handles) 
% hObject    handle to radiobutton4 (see GCBO) 
% eventdata  reserved - to be defined in a future version of MATLAB 
% handles    structure with handles and user data (see GUIDATA) 
 
% Hint: get(hObject,'Value') returns toggle state of radiobutton4 
global image im2 
h=greeny(image); 
axes(handles.axes2); 
imshow(h); 
im2 = h; 
 
% --- Executes on button press in radiobutton5. 
function radiobutton5_Callback(hObject, eventdata, handles) 
% hObject    handle to radiobutton5 (see GCBO) 
% eventdata  reserved - to be defined in a future version of MATLAB 
% handles    structure with handles and user data (see GUIDATA) 
 
% Hint: get(hObject,'Value') returns toggle state of radiobutton5 
global image 
blui=bluy(image); 
axes(handles.axes2); 
imshow(blui); 
im2= blui; 
 
 
% --- Executes on button press in pushbutton9. 
function pushbutton11_Callback(hObject, eventdata, handles) 
% hObject    handle to pushbutton9 (see GCBO) 
% eventdata  reserved - to be defined in a future version of MATLAB 
% handles    structure with handles and user data (see GUIDATA) 
global im2 

[FileName, PathName] =  uiputfile({'*.jpg;*.tif;*.png;*.gif','All Image Files';...
          '*.*','All Files' },'Save Image',...
          'C:\Work\newfile.jpg');
      Name = fullfile(PathName, FileName);
        imwrite(im2,Name,'jpg'); 
            msgbox('File Saved Successfully');
 
% --- Executes on button press in pushbutton12. 
function pushbutton12_Callback(hObject, eventdata, handles) 
% hObject    handle to pushbutton12 (see GCBO) 
% eventdata  reserved - to be defined in a future version of MATLAB 
% handles    structure with handles and user data (see GUIDATA) 
global image im2 
g = imadjust(image,[.2 .3 0; .6 .7 1],[]); 
axes(handles.axes2); 
imshow(g); 
im2=g; 
 
% --- Executes on slider movement. 
function slider1_Callback(hObject, eventdata, handles) 
% hObject    handle to slider1 (see GCBO) 
% eventdata  reserved - to be defined in a future version of MATLAB 
% handles    structure with handles and user data (see GUIDATA) 
global im2 
% Hints: get(hObject,'Value') returns position of slider 
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider 
val=0.7*get(hObject,'Value')-0.5; 
imbright=im2+val; 
axes(handles.axes2); 
imshow(imbright); 
 
% --- Executes during object creation, after setting all properties. 
function slider1_CreateFcn(hObject, eventdata, handles) 
% hObject    handle to slider1 (see GCBO) 
% eventdata  reserved - to be defined in a future version of MATLAB 
% handles    empty - handles not created until after all CreateFcns called 
 
% Hint: slider controls usually have a light gray background. 
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor')) 
    set(hObject,'BackgroundColor',[.9 .9 .9]); 
end 

function varargout = DITWMG(varargin)
% DITWMG MATLAB code for DITWMG.fig
%      DITWMG, by itself, creates a new DITWMG or raises the existing
%      singleton*.
%
%      H = DITWMG returns the handle to a new DITWMG or the handle to
%      the existing singleton*.
%
%      DITWMG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DITWMG.M with the given input arguments.
%
%      DITWMG('Property','Value',...) creates a new DITWMG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DITWMG_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DITWMG_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DITWMG

% Last Modified by GUIDE v2.5 01-Sep-2018 10:04:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DITWMG_OpeningFcn, ...
                   'gui_OutputFcn',  @DITWMG_OutputFcn, ...
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


% --- Executes just before DITWMG is made visible.
function DITWMG_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DITWMG (see VARARGIN)

% Choose default command line output for DITWMG
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DITWMG wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DITWMG_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Andcheck.
function Andcheck_Callback(hObject, eventdata, handles)
% hObject    handle to Andcheck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
persistent count
persistent c
c=0
count='Not'
if (c==1)
    count = '';
end
%create new string
str=sprintf('%s IC 7408',count);
%Update the text field
set (handles.Andoutput,'String',str);


% --- Executes on button press in Orcheck.
function Orcheck_Callback(hObject, eventdata, handles)
% hObject    handle to Orcheck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
persistent count
persistent b
b=0
count='Not'
if (b==1)
    count = '';
end
%create new string
str=sprintf('%s IC 7432',count);
%Update the text field
set (handles.Oroutput,'String',str);


% --- Executes on button press in Invertcheck.
function Invertcheck_Callback(hObject, eventdata, handles)
% hObject    handle to Invertcheck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
persistent count
persistent a
a=0
count='Not'
if (a==1)
    count = '';
end
%create new string
str=sprintf('%s IC 7404',count);
%Update the text field
set (handles.Invertoutput,'String',str);
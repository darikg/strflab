function data = strfData_no_global(stim,resp,groupIdx)
%see strdData

% Init & get input size
% --------------------
stimSiz=size(stim);
respLen=length(resp);
nSample=intersect(stimSiz,respLen);
if length(nSample)~=1
  warning('strfData >< [stim] and [resp] must have same # of rows.');
end
if nargin>2
  idxLen=length(groupIdx);
  if idxLen~=nSample
    warning('strfData >< [groupIdx] must have same length as [resp].');
  end
else
  groupIdx=[];
end


% Init & get input size
% --------------------
data = struct;
data.stim=stim;
data.resp=resp;
data.nSample=nSample;
data.groupIdx=groupIdx;






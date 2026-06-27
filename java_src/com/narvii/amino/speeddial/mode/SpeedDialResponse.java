package com.narvii.amino.speeddial.mode;

import com.narvii.model.ChatThread;
import com.narvii.model.PlayList;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes2.dex */
public class SpeedDialResponse extends ApiResponse {
    public List<LiveCategory> liveLayerList;
    public HashMap<String, PlayList> playlistInThreadList;
    public List<ChatThread> threadList;
    public HashMap<String, List<User>> userProfileListInThreadList;
}

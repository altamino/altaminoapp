package com.narvii.chat.screenroom.utils;

import android.content.SharedPreferences;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.model.PlayListItem;
import com.narvii.util.JacksonUtils;
import java.util.List;

/* loaded from: classes2.dex */
public class PlayListSharedPreference {
    private static final String PREF_PREFIX_PLAY_LIST = "PLAY_LIST";
    private NVContext nvContext;
    private final SharedPreferences prefs;
    private RtcService rtcService;

    public PlayListSharedPreference(NVContext nVContext) {
        this.prefs = nVContext.getContext().getSharedPreferences("play_list", 0);
        this.rtcService = (RtcService) nVContext.getService("rtc");
        this.nvContext = nVContext;
    }

    public void savePlaylist(List<PlayListItem> list) {
        SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
        if (mainSigChannel == null) {
            return;
        }
        savePlaylist(mainSigChannel.ndcId, list);
    }

    public void savePlaylist(int i, List<PlayListItem> list) {
        if (i == -1) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        editorEdit.putString(PREF_PREFIX_PLAY_LIST + i, JacksonUtils.writeAsString(list));
        editorEdit.apply();
    }

    public List<PlayListItem> loadPlayListItem() {
        SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
        if (mainSigChannel == null) {
            return null;
        }
        return loadPlayListItem(mainSigChannel.ndcId);
    }

    public List<PlayListItem> loadPlayListItem(int i) {
        if (i == -1) {
            return null;
        }
        return JacksonUtils.readListAs(this.prefs.getString(PREF_PREFIX_PLAY_LIST + i, null), PlayListItem.class);
    }
}

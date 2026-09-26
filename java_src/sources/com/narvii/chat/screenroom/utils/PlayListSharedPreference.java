package com.narvii.chat.screenroom.utils;

import android.content.SharedPreferences;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.model.PlayListItem;
import com.narvii.util.JacksonUtils;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class PlayListSharedPreference {
    private static final String PREF_PREFIX_PLAY_LIST = "PLAY_LIST";
    private NVContext nvContext;
    private final SharedPreferences prefs;
    private RtcService rtcService;

    public List<PlayListItem> loadPlayListItem() {
        SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
        if (mainSigChannel == null) {
            return null;
        }
        return loadPlayListItem(mainSigChannel.ndcId);
    }

    public void savePlaylist(List<PlayListItem> list) {
        SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
        if (mainSigChannel == null) {
            return;
        }
        savePlaylist(mainSigChannel.ndcId, list);
    }

    public PlayListSharedPreference(NVContext nVContext) {
        this.prefs = nVContext.getContext().getSharedPreferences("play_list", 0);
        this.rtcService = (RtcService) nVContext.getService("rtc");
        this.nvContext = nVContext;
    }

    public List<PlayListItem> loadPlayListItem(int i10) {
        if (i10 == -1) {
            return null;
        }
        return JacksonUtils.readListAs(this.prefs.getString(PREF_PREFIX_PLAY_LIST + i10, null), PlayListItem.class);
    }

    public void savePlaylist(int i10, List<PlayListItem> list) {
        if (i10 == -1) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        editorEdit.putString(PREF_PREFIX_PLAY_LIST + i10, JacksonUtils.writeAsString(list));
        editorEdit.apply();
    }
}

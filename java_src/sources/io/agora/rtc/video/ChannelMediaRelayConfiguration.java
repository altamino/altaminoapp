package io.agora.rtc.video;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class ChannelMediaRelayConfiguration {
    private Map<String, ChannelMediaInfo> destInfos;
    private ChannelMediaInfo srcInfo;

    public Map<String, ChannelMediaInfo> getDestChannelMediaInfos() {
        return this.destInfos;
    }

    public ChannelMediaInfo getSrcChannelMediaInfo() {
        return this.srcInfo;
    }

    public void setSrcChannelInfo(ChannelMediaInfo srcInfo) {
        this.srcInfo = srcInfo;
    }

    public void removeDestChannelInfo(String channelName) {
        this.destInfos.remove(channelName);
    }

    public void setDestChannelInfo(String channelName, ChannelMediaInfo destInfo) {
        this.destInfos.put(channelName, destInfo);
    }

    public ChannelMediaRelayConfiguration() {
        this.srcInfo = null;
        this.destInfos = null;
        this.destInfos = new HashMap();
        this.srcInfo = new ChannelMediaInfo(null, null, 0);
    }
}

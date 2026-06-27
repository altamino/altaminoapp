package com.narvii.video.model;

import android.content.Context;
import android.util.Log;
import com.narvii.video.ui.Utils;
import io.agora.rtc.IRtcEngineEventHandler;
import io.agora.rtc.RtcEngine;
import io.agora.rtc.models.UserInfo;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public class MyEngineEventHandler {
    private static final String TAG = "MyEngineEventHandler";
    private final EngineConfig mConfig;
    private final Context mContext;
    private final ConcurrentHashMap<RtcEventHandler, Integer> mEventHandlerList = new ConcurrentHashMap<>();
    final IRtcEngineEventHandler mRtcEventHandler = new IRtcEngineEventHandler() { // from class: com.narvii.video.model.MyEngineEventHandler.1
        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onRtcStats(IRtcEngineEventHandler.RtcStats rtcStats) {
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserInfoUpdated(int i, UserInfo userInfo) {
            super.onUserInfoUpdated(i, userInfo);
            Utils.log(MyEngineEventHandler.TAG, "onUserInfoUpdated " + i);
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onRemoteUserJoined(i);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserJoined(int i, int i2) {
            Utils.log(MyEngineEventHandler.TAG, "onUserJoined " + i);
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onRemoteUserJoined(i);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onFirstRemoteAudioDecoded(int i, int i2) {
            Utils.log(MyEngineEventHandler.TAG, "onFirstRemoteAudioDecoded " + i);
            super.onFirstRemoteAudioDecoded(i, i2);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onFirstRemoteAudioFrame(int i, int i2) {
            Utils.log(MyEngineEventHandler.TAG, "onFirstRemoteAudioFrame " + i);
            super.onFirstRemoteAudioFrame(i, i2);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onFirstRemoteVideoFrame(int i, int i2, int i3, int i4) {
            Utils.log(MyEngineEventHandler.TAG, "onFirstRemoteVideoFrame " + i);
            super.onFirstRemoteVideoFrame(i, i2, i3, i4);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onClientRoleChanged(int i, int i2) {
            Log.d(MyEngineEventHandler.TAG, "role change " + i + " " + i2);
            super.onClientRoleChanged(i, i2);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onNetworkTypeChanged(int i) {
            super.onNetworkTypeChanged(i);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onFirstRemoteVideoDecoded(int i, int i2, int i3, int i4) {
            Utils.log(MyEngineEventHandler.TAG, "onFirstRemoteVideoDecoded " + (i & 4294967295L) + " " + i2 + " " + i3 + " " + i4);
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onFirstRemoteVideoDecoded(i, i2, i3, i4);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onJoinChannelSuccess(String str, int i, int i2) {
            Utils.log(MyEngineEventHandler.TAG, "onJoinChannelSuccess " + str + " " + i + " " + (i & 4294967295L) + " " + i2);
            MyEngineEventHandler.this.mConfig.mUid = i;
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onJoinChannelSuccess(str, i, i2);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onRejoinChannelSuccess(String str, int i, int i2) {
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onRejoinChannelSuccess(str, i, i2);
            }
            Utils.log(MyEngineEventHandler.TAG, "onRejoinChannelSuccess " + str + " " + i + " " + i2);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onLeaveChannel(IRtcEngineEventHandler.RtcStats rtcStats) {
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onLeaveChannel();
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onFirstLocalVideoFrame(int i, int i2, int i3) {
            Utils.log(MyEngineEventHandler.TAG, "onFirstLocalVideoFrame " + i + " " + i2 + " " + i3);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserOffline(int i, int i2) {
            Utils.log(MyEngineEventHandler.TAG, "onUserOffline " + (i & 4294967295L) + " " + i2);
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onUserOffline(i, i2);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserMuteVideo(int i, boolean z) {
            Utils.log(MyEngineEventHandler.TAG, "onUserMuteVideo " + (i & 4294967295L) + " " + z);
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onUserMuteVideo(i, z);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserMuteAudio(int i, boolean z) {
            super.onUserMuteAudio(i, z);
            Utils.log(MyEngineEventHandler.TAG, "onUserMuteAudio " + (i & 4294967295L) + " " + z);
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onUserMuteAudio(i, z);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onRemoteVideoStats(IRtcEngineEventHandler.RemoteVideoStats remoteVideoStats) {
            String str = MyEngineEventHandler.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("onRemoteVideoStats ");
            sb.append(remoteVideoStats.uid);
            sb.append(" ");
            sb.append(remoteVideoStats.rxStreamType == 0 ? "high" : "low");
            Utils.log(str, sb.toString());
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onExtraCallback(10, remoteVideoStats);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onAudioVolumeIndication(IRtcEngineEventHandler.AudioVolumeInfo[] audioVolumeInfoArr, int i) {
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onAudioVolumeIndication(audioVolumeInfoArr, i);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onAudioQuality(int i, int i2, short s, short s2) {
            Utils.log(MyEngineEventHandler.TAG, "onAudioQuality " + i + " " + i2 + " " + ((int) s));
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onAudioQuality(i, i2, s, s2);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onLastmileQuality(int i) {
            Utils.log(MyEngineEventHandler.TAG, "onLastmileQuality " + i);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onError(int i) {
            Utils.log(MyEngineEventHandler.TAG, "onError " + i + " " + RtcEngine.getErrorDescription(i));
            for (RtcEventHandler rtcEventHandler : MyEngineEventHandler.this.mEventHandlerList.keySet()) {
                rtcEventHandler.onError(i, RtcEngine.getErrorDescription(i));
                if (i == 17) {
                    rtcEventHandler.onExtraCallback(1, Integer.valueOf(i), RtcEngine.getErrorDescription(i));
                } else {
                    rtcEventHandler.onExtraCallback(9, Integer.valueOf(i), RtcEngine.getErrorDescription(i));
                }
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onStreamMessage(int i, int i2, byte[] bArr) {
            Utils.log(MyEngineEventHandler.TAG, "onStreamMessage " + (i & 4294967295L) + " " + i2 + " " + Arrays.toString(bArr));
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onExtraCallback(3, Integer.valueOf(i), bArr);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onStreamMessageError(int i, int i2, int i3, int i4, int i5) {
            String str = MyEngineEventHandler.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("onStreamMessageError ");
            long j = i & 4294967295L;
            sb.append(j);
            sb.append(" ");
            sb.append(i2);
            sb.append(" ");
            sb.append(i3);
            sb.append(" ");
            sb.append(i4);
            sb.append(" ");
            sb.append(i5);
            Utils.log(str, sb.toString());
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onExtraCallback(9, Integer.valueOf(i3), "on stream msg error " + j + " " + i4 + " " + i5);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onNetworkQuality(int i, int i2, int i3) {
            super.onNetworkQuality(i, i2, i3);
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onNetworkQuality(i, i2, i3);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onConnectionLost() {
            Utils.log(MyEngineEventHandler.TAG, "onConnectionLost");
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onNetworkStatusChanged(2);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onConnectionInterrupted() {
            Utils.log(MyEngineEventHandler.TAG, "onConnectionInterrupted");
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onNetworkStatusChanged(3);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onAudioRouteChanged(int i) {
            Utils.log(MyEngineEventHandler.TAG, "onAudioRouteChanged " + i);
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onAudioRouteChanged(i);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onWarning(int i) {
            Utils.log(MyEngineEventHandler.TAG, "onWarning " + i);
            for (RtcEventHandler rtcEventHandler : MyEngineEventHandler.this.mEventHandlerList.keySet()) {
                if (i == 104) {
                    rtcEventHandler.onNetworkStatusChanged(1);
                }
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onRequestToken() {
            super.onRequestToken();
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onRequestToken();
            }
        }
    };

    public MyEngineEventHandler(Context context, EngineConfig engineConfig) {
        this.mContext = context;
        this.mConfig = engineConfig;
    }

    public void addEventHandler(RtcEventHandler rtcEventHandler) {
        this.mEventHandlerList.put(rtcEventHandler, 0);
    }

    public void removeEventHandler(RtcEventHandler rtcEventHandler) {
        this.mEventHandlerList.remove(rtcEventHandler);
    }

    public boolean containeHandle(RtcEventHandler rtcEventHandler) {
        return this.mEventHandlerList.containsKey(rtcEventHandler);
    }
}

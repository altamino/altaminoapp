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

/* JADX INFO: loaded from: classes10.dex */
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
        public void onAudioVolumeIndication(IRtcEngineEventHandler.AudioVolumeInfo[] audioVolumeInfoArr, int i10) {
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onAudioVolumeIndication(audioVolumeInfoArr, i10);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onLeaveChannel(IRtcEngineEventHandler.RtcStats rtcStats) {
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onLeaveChannel();
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onRejoinChannelSuccess(String str, int i10, int i11) {
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onRejoinChannelSuccess(str, i10, i11);
            }
            Utils.log(MyEngineEventHandler.TAG, "onRejoinChannelSuccess " + str + " " + i10 + " " + i11);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onAudioQuality(int i10, int i11, short s, short s5) {
            Utils.log(MyEngineEventHandler.TAG, "onAudioQuality " + i10 + " " + i11 + " " + ((int) s));
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onAudioQuality(i10, i11, s, s5);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onAudioRouteChanged(int i10) {
            Utils.log(MyEngineEventHandler.TAG, "onAudioRouteChanged " + i10);
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onAudioRouteChanged(i10);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onClientRoleChanged(int i10, int i11) {
            Log.d(MyEngineEventHandler.TAG, "role change " + i10 + " " + i11);
            super.onClientRoleChanged(i10, i11);
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
        public void onConnectionLost() {
            Utils.log(MyEngineEventHandler.TAG, "onConnectionLost");
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onNetworkStatusChanged(2);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onError(int i10) {
            Utils.log(MyEngineEventHandler.TAG, "onError " + i10 + " " + RtcEngine.getErrorDescription(i10));
            for (RtcEventHandler rtcEventHandler : MyEngineEventHandler.this.mEventHandlerList.keySet()) {
                rtcEventHandler.onError(i10, RtcEngine.getErrorDescription(i10));
                if (i10 != 17) {
                    if (i10 != 18) {
                        rtcEventHandler.onExtraCallback(9, Integer.valueOf(i10), RtcEngine.getErrorDescription(i10));
                    } else {
                        rtcEventHandler.onExtraCallback(1002, Integer.valueOf(i10), RtcEngine.getErrorDescription(i10));
                    }
                } else {
                    rtcEventHandler.onExtraCallback(1, Integer.valueOf(i10), RtcEngine.getErrorDescription(i10));
                }
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onFirstLocalVideoFrame(int i10, int i11, int i12) {
            Utils.log(MyEngineEventHandler.TAG, "onFirstLocalVideoFrame " + i10 + " " + i11 + " " + i12);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onFirstRemoteAudioDecoded(int i10, int i11) {
            Utils.log(MyEngineEventHandler.TAG, "onFirstRemoteAudioDecoded " + i10);
            super.onFirstRemoteAudioDecoded(i10, i11);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onFirstRemoteAudioFrame(int i10, int i11) {
            Utils.log(MyEngineEventHandler.TAG, "onFirstRemoteAudioFrame " + i10);
            super.onFirstRemoteAudioFrame(i10, i11);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onFirstRemoteVideoDecoded(int i10, int i11, int i12, int i13) {
            Utils.log(MyEngineEventHandler.TAG, "onFirstRemoteVideoDecoded " + (((long) i10) & 4294967295L) + " " + i11 + " " + i12 + " " + i13);
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onFirstRemoteVideoDecoded(i10, i11, i12, i13);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onFirstRemoteVideoFrame(int i10, int i11, int i12, int i13) {
            Utils.log(MyEngineEventHandler.TAG, "onFirstRemoteVideoFrame " + i10);
            super.onFirstRemoteVideoFrame(i10, i11, i12, i13);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onJoinChannelSuccess(String str, int i10, int i11) {
            Utils.log(MyEngineEventHandler.TAG, "onJoinChannelSuccess " + str + " " + i10 + " " + (((long) i10) & 4294967295L) + " " + i11);
            MyEngineEventHandler.this.mConfig.mUid = i10;
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onJoinChannelSuccess(str, i10, i11);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onLastmileQuality(int i10) {
            Utils.log(MyEngineEventHandler.TAG, "onLastmileQuality " + i10);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onNetworkQuality(int i10, int i11, int i12) {
            super.onNetworkQuality(i10, i11, i12);
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onNetworkQuality(i10, i11, i12);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onNetworkTypeChanged(int i10) {
            super.onNetworkTypeChanged(i10);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onRemoteVideoStats(IRtcEngineEventHandler.RemoteVideoStats remoteVideoStats) {
            String str;
            String str2 = MyEngineEventHandler.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("onRemoteVideoStats ");
            sb.append(remoteVideoStats.uid);
            sb.append(" ");
            if (remoteVideoStats.rxStreamType == 0) {
                str = "high";
            } else {
                str = "low";
            }
            sb.append(str);
            Utils.log(str2, sb.toString());
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onExtraCallback(10, remoteVideoStats);
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

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onStreamMessage(int i10, int i11, byte[] bArr) {
            Utils.log(MyEngineEventHandler.TAG, "onStreamMessage " + (((long) i10) & 4294967295L) + " " + i11 + " " + Arrays.toString(bArr));
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onExtraCallback(3, Integer.valueOf(i10), bArr);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onStreamMessageError(int i10, int i11, int i12, int i13, int i14) {
            String str = MyEngineEventHandler.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("onStreamMessageError ");
            long j6 = ((long) i10) & 4294967295L;
            sb.append(j6);
            sb.append(" ");
            sb.append(i11);
            sb.append(" ");
            sb.append(i12);
            sb.append(" ");
            sb.append(i13);
            sb.append(" ");
            sb.append(i14);
            Utils.log(str, sb.toString());
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onExtraCallback(9, Integer.valueOf(i12), "on stream msg error " + j6 + " " + i13 + " " + i14);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserInfoUpdated(int i10, UserInfo userInfo) {
            super.onUserInfoUpdated(i10, userInfo);
            Utils.log(MyEngineEventHandler.TAG, "onUserInfoUpdated " + i10);
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onRemoteUserJoined(i10);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserJoined(int i10, int i11) {
            Utils.log(MyEngineEventHandler.TAG, "onUserJoined " + i10);
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onRemoteUserJoined(i10);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserMuteAudio(int i10, boolean z6) {
            super.onUserMuteAudio(i10, z6);
            Utils.log(MyEngineEventHandler.TAG, "onUserMuteAudio " + (((long) i10) & 4294967295L) + " " + z6);
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onUserMuteAudio(i10, z6);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserMuteVideo(int i10, boolean z6) {
            Utils.log(MyEngineEventHandler.TAG, "onUserMuteVideo " + (((long) i10) & 4294967295L) + " " + z6);
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onUserMuteVideo(i10, z6);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserOffline(int i10, int i11) {
            Utils.log(MyEngineEventHandler.TAG, "onUserOffline " + (((long) i10) & 4294967295L) + " " + i11);
            Iterator it = MyEngineEventHandler.this.mEventHandlerList.keySet().iterator();
            while (it.hasNext()) {
                ((RtcEventHandler) it.next()).onUserOffline(i10, i11);
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onWarning(int i10) {
            Utils.log(MyEngineEventHandler.TAG, "onWarning " + i10);
            for (RtcEventHandler rtcEventHandler : MyEngineEventHandler.this.mEventHandlerList.keySet()) {
                if (i10 == 104) {
                    rtcEventHandler.onNetworkStatusChanged(1);
                }
            }
        }
    };

    public void addEventHandler(RtcEventHandler rtcEventHandler) {
        this.mEventHandlerList.put(rtcEventHandler, 0);
    }

    public boolean containeHandle(RtcEventHandler rtcEventHandler) {
        return this.mEventHandlerList.containsKey(rtcEventHandler);
    }

    public void removeEventHandler(RtcEventHandler rtcEventHandler) {
        this.mEventHandlerList.remove(rtcEventHandler);
    }

    public MyEngineEventHandler(Context context, EngineConfig engineConfig) {
        this.mContext = context;
        this.mConfig = engineConfig;
    }
}

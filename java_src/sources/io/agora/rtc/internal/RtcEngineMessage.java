package io.agora.rtc.internal;

import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import io.agora.rtc.IRtcEngineEventHandler;
import io.agora.rtc.live.LiveInjectStreamConfig;
import io.agora.rtc.live.LiveTranscoding;
import io.agora.rtc.video.AgoraImage;
import io.agora.rtc.video.ChannelMediaInfo;
import io.agora.rtc.video.ChannelMediaRelayConfiguration;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class RtcEngineMessage {
    public static short AGORA_UI_SERVER;

    public static class MediaAppContext extends Marshallable {
        MediaNetworkInfo networkInfo;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            MediaNetworkInfo mediaNetworkInfo = this.networkInfo;
            if (mediaNetworkInfo != null) {
                mediaNetworkInfo.marshall(this);
            }
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class MediaNetworkInfo extends Marshallable {
        int asu;
        int frequency;
        int linkspeed;
        int networkSubtype;
        int networkType;
        int rssi;
        int signalLevel;
        String localIp4 = "";
        String gatewayIp4 = "";
        String localIp6 = "";
        String gatewayIp6 = "";
        String ssid = "";
        String bssid = "";
        ArrayList<String> dnsList = null;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
        }

        public void marshall(Marshallable m) {
            m.pushBytes(this.localIp4.getBytes());
            m.pushBytes(this.gatewayIp4.getBytes());
            m.pushBytes(this.localIp6.getBytes());
            m.pushBytes(this.gatewayIp6.getBytes());
            m.pushInt(this.networkType);
            m.pushInt(this.networkSubtype);
            m.pushInt(this.signalLevel);
            m.pushInt(this.rssi);
            m.pushInt(this.asu);
            m.pushInt(this.frequency);
            m.pushInt(this.linkspeed);
            String str = this.ssid;
            if (str == null || !(str instanceof String)) {
                m.pushBytes("".getBytes());
            } else {
                m.pushBytes(str.getBytes());
            }
            String str2 = this.bssid;
            if (str2 != null) {
                m.pushBytes(str2.getBytes());
            } else {
                m.pushBytes("".getBytes());
            }
            ArrayList<String> arrayList = this.dnsList;
            if (arrayList != null) {
                m.pushStringArray(arrayList);
            } else {
                m.pushStringArray(new ArrayList<>());
            }
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            marshall(this);
            return super.marshall();
        }
    }

    public static class MediaResSetupTime extends Marshallable {
        int elapsed;
        boolean firstSuccess;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.elapsed = popInt();
            this.firstSuccess = popBool().booleanValue();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PActiveSpeaker extends Marshallable {
        public int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.uid = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PAndroidContextInfo extends Marshallable {
        public String androidID;
        public String configDir;
        public String dataDir;
        public String device;
        public String deviceInfo;
        public String pluginDir;
        public String systemInfo;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushBytes(this.device.getBytes());
            pushBytes(this.deviceInfo.getBytes());
            pushBytes(this.systemInfo.getBytes());
            pushBytes(this.configDir.getBytes());
            pushBytes(this.dataDir.getBytes());
            pushBytes(this.pluginDir.getBytes());
            pushBytes(this.androidID.getBytes());
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.device = popString16UTF8();
            this.deviceInfo = popString16UTF8();
            this.systemInfo = popString16UTF8();
            this.configDir = popString16UTF8();
            this.dataDir = popString16UTF8();
            this.pluginDir = popString16UTF8();
            this.androidID = popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PApiCallExecuted extends Marshallable {
        public String api;
        public int error;
        public String result;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.error = popInt();
            this.api = popString16UTF8();
            this.result = popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PCameraExposureAreaChanged extends Marshallable {
        public int height;
        public int width;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f3236x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f3237y;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.f3236x);
            pushInt(this.f3237y);
            pushInt(this.width);
            pushInt(this.height);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.f3236x = popInt();
            this.f3237y = popInt();
            this.width = popInt();
            this.height = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PCameraFocusAreaChanged extends Marshallable {
        public int height;
        public int width;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f3238x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f3239y;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.f3238x);
            pushInt(this.f3239y);
            pushInt(this.width);
            pushInt(this.height);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.f3238x = popInt();
            this.f3239y = popInt();
            this.width = popInt();
            this.height = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PChannelMediaRelayConfiguration extends Marshallable {
        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        private void marshallChannelInfo(Marshallable m, ChannelMediaInfo channelMediaInfo) {
            m.pushString16(channelMediaInfo.channelName);
            m.pushString16(channelMediaInfo.token);
            m.pushInt(channelMediaInfo.uid);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(byte[] buf) {
            super.unmarshall(buf);
        }

        private void marshall(Marshallable m, ChannelMediaRelayConfiguration configuration) {
            marshallChannelInfo(m, configuration.getSrcChannelMediaInfo());
            pushShort((short) configuration.getDestChannelMediaInfos().size());
            Iterator<String> it = configuration.getDestChannelMediaInfos().keySet().iterator();
            while (it.hasNext()) {
                marshallChannelInfo(m, configuration.getDestChannelMediaInfos().get(it.next()));
            }
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }

        public byte[] marshall(ChannelMediaRelayConfiguration configuration) {
            marshall(this, configuration);
            return super.marshall();
        }
    }

    public static class PClientRoleChanged extends Marshallable {
        int newRole;
        int oldRole;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.oldRole = popInt();
            this.newRole = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PConnectionState extends Marshallable {
        public int reason;
        public int state;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.state);
            pushInt(this.reason);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.state = popInt();
            this.reason = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PCrossChannelEvent extends Marshallable {
        public int code;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.code);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.code = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PCrossChannelState extends Marshallable {
        public int code;
        public int state;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.state);
            pushInt(this.code);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.state = popInt();
            this.code = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PError extends Marshallable {
        public int err;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.err = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PFaceDetectValue extends Marshallable {
        public int imageHeight;
        public int imageWidth;
        public int num;
        FaceRect[] rectArr = null;
        int[] disArr = null;

        public static class FaceRect {
            public int height;
            public int width;

            /* JADX INFO: renamed from: x, reason: collision with root package name */
            public int f3240x;

            /* JADX INFO: renamed from: y, reason: collision with root package name */
            public int f3241y;
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.imageWidth = popInt();
            this.imageHeight = popInt();
            int iPopShort = popShort();
            if (iPopShort > 0) {
                this.rectArr = new FaceRect[iPopShort];
                for (int i10 = 0; i10 < iPopShort; i10++) {
                    this.rectArr[i10] = new FaceRect();
                    this.rectArr[i10].f3240x = popInt();
                    this.rectArr[i10].f3241y = popInt();
                    this.rectArr[i10].width = popInt();
                    this.rectArr[i10].height = popInt();
                }
            }
            int iPopShort2 = popShort();
            if (iPopShort2 > 0) {
                this.disArr = new int[iPopShort2];
                for (int i11 = 0; i11 < iPopShort2; i11++) {
                    this.disArr[i11] = popInt();
                }
            }
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PFirstLocalAudioFrame extends Marshallable {
        public int elapsed;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.elapsed);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.elapsed = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PFirstLocalAudioFramePublished extends Marshallable {
        public int elapsed;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.elapsed);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.elapsed = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PFirstLocalVideoFrame extends Marshallable {
        public int elapsed;
        public int height;
        public int width;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.width);
            pushInt(this.height);
            pushInt(this.elapsed);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.width = popInt();
            this.height = popInt();
            this.elapsed = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PFirstLocalVideoFramePublished extends Marshallable {
        public int elapsed;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.elapsed);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.elapsed = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PFirstRemoteAudioFrame extends Marshallable {
        public int elapsed;
        public int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.uid);
            pushInt(this.elapsed);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.uid = popInt();
            this.elapsed = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PFirstRemoteVideoDecoded extends Marshallable {
        public int elapsed;
        public int height;
        public int uid;
        public int width;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.uid);
            pushInt(this.width);
            pushInt(this.height);
            pushInt(this.elapsed);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.uid = popInt();
            this.width = popInt();
            this.height = popInt();
            this.elapsed = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PFirstRemoteVideoFrame extends Marshallable {
        public int elapsed;
        public int height;
        public int uid;
        public int width;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.uid);
            pushInt(this.width);
            pushInt(this.height);
            pushInt(this.elapsed);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.uid = popInt();
            this.width = popInt();
            this.height = popInt();
            this.elapsed = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PHostInRequest extends Marshallable {
        public int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.uid = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PHostInResponse extends Marshallable {
        public boolean accepted;
        public int error;
        public int ownerUid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.ownerUid = popInt();
            this.accepted = popBool().booleanValue();
            this.error = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PHostInStopped extends Marshallable {
        public int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.uid = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PInjectStreamConfig extends Marshallable {
        private static final short SERVER_TYPE = 0;
        private static final short URI = 25;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(byte[] buf) {
            super.unmarshall(buf);
        }

        private void marshall(Marshallable m, LiveInjectStreamConfig config) {
            m.pushShort((short) 0);
            m.pushShort(URI);
            m.pushInt(config.width);
            m.pushInt(config.height);
            m.pushInt(config.videoGop);
            m.pushInt(config.videoFramerate);
            m.pushInt(config.videoBitrate);
            m.pushInt(LiveInjectStreamConfig.AudioSampleRateType.getValue(config.audioSampleRate));
            m.pushInt(config.audioBitrate);
            m.pushInt(config.audioChannels);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }

        public byte[] marshall(LiveInjectStreamConfig config) {
            marshall(this, config);
            return super.marshall();
        }
    }

    public static class PLiveTranscoding extends Marshallable {
        private static final short SERVER_TYPE = 0;
        private static final short URI = 23;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        private void marshallImage(Marshallable m, AgoraImage image) {
            m.pushString16(image.url);
            m.pushInt(image.f3244x);
            m.pushInt(image.f3245y);
            m.pushInt(image.width);
            m.pushInt(image.height);
        }

        private void marshallUserConfig(Marshallable m, LiveTranscoding.TranscodingUser user) {
            m.pushInt(user.uid);
            m.pushInt(user.f3242x);
            m.pushInt(user.f3243y);
            m.pushInt(user.width);
            m.pushInt(user.height);
            m.pushInt(user.zOrder);
            m.pushDouble(user.alpha);
            m.pushInt(user.audioChannel);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(byte[] buf) {
            super.unmarshall(buf);
        }

        private void marshall(Marshallable m, LiveTranscoding transcoding) {
            m.pushShort((short) 0);
            m.pushShort((short) 23);
            m.pushInt(transcoding.width);
            m.pushInt(transcoding.height);
            m.pushInt(transcoding.videoGop);
            m.pushInt(transcoding.videoFramerate);
            m.pushInt(LiveTranscoding.VideoCodecProfileType.getValue(transcoding.videoCodecProfile));
            m.pushInt(LiveTranscoding.VideoCodecType.getValue(transcoding.videoCodecType));
            m.pushInt(transcoding.videoBitrate);
            if (transcoding.watermark == null) {
                transcoding.watermark = new AgoraImage();
            }
            marshallImage(m, transcoding.watermark);
            if (transcoding.backgroundImage == null) {
                transcoding.backgroundImage = new AgoraImage();
            }
            marshallImage(m, transcoding.backgroundImage);
            m.pushBool(Boolean.valueOf(transcoding.lowLatency));
            m.pushInt(LiveTranscoding.AudioSampleRateType.getValue(transcoding.audioSampleRate));
            m.pushInt(transcoding.audioBitrate);
            m.pushInt(transcoding.audioChannels);
            m.pushInt(LiveTranscoding.AudioCodecProfileType.getValue(transcoding.audioCodecProfile));
            m.pushInt(transcoding.backgroundColor & ViewCompat.MEASURED_SIZE_MASK);
            if (TextUtils.isEmpty(transcoding.userConfigExtraInfo)) {
                transcoding.userConfigExtraInfo = "";
            }
            m.pushString16(transcoding.userConfigExtraInfo);
            if (TextUtils.isEmpty(transcoding.metadata)) {
                transcoding.metadata = "";
            }
            m.pushString16(transcoding.metadata);
            if (transcoding.getUsers() != null && transcoding.getUsers().size() > 0) {
                pushShort((short) transcoding.getUserCount());
                Iterator<LiveTranscoding.TranscodingUser> it = transcoding.getUsers().iterator();
                while (it.hasNext()) {
                    marshallUserConfig(m, it.next());
                }
            } else {
                pushShort((short) 0);
            }
            pushShort((short) transcoding.getAdvancedFeatures().size());
            for (Map.Entry<String, Boolean> entry : transcoding.getAdvancedFeatures().entrySet()) {
                m.pushString16(entry.getKey());
                m.pushBool(entry.getValue());
            }
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }

        public byte[] marshall(LiveTranscoding transcoding) {
            marshall(this, transcoding);
            return super.marshall();
        }
    }

    public static class PLocalAudioEnabled extends Marshallable {
        boolean enabled;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.enabled = popBool().booleanValue();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PLocalAudioStat extends Marshallable {
        public IRtcEngineEventHandler.LocalAudioStats stats = new IRtcEngineEventHandler.LocalAudioStats();

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.stats.numChannels);
            pushInt(this.stats.sentSampleRate);
            pushInt(this.stats.sentBitrate);
            pushShort((short) this.stats.txPacketLossRate);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.stats.numChannels = popInt();
            this.stats.sentSampleRate = popInt();
            this.stats.sentBitrate = popInt();
            this.stats.txPacketLossRate = popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PLocalFallbackStatus extends Marshallable {
        boolean state;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.state = popBool().booleanValue();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PLocalVideoStat extends Marshallable {
        public IRtcEngineEventHandler.LocalVideoStats stats = new IRtcEngineEventHandler.LocalVideoStats();

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.stats.sentBitrate);
            pushInt(this.stats.sentFrameRate);
            pushInt(this.stats.encoderOutputFrameRate);
            pushInt(this.stats.rendererOutputFrameRate);
            pushInt(this.stats.targetBitrate);
            pushInt(this.stats.targetFrameRate);
            pushInt(this.stats.qualityAdaptIndication);
            pushInt(this.stats.encodedBitrate);
            pushInt(this.stats.encodedFrameWidth);
            pushInt(this.stats.encodedFrameHeight);
            pushInt(this.stats.encodedFrameCount);
            pushByte((byte) this.stats.codecType);
            pushShort((short) this.stats.txPacketLossRate);
            pushInt(this.stats.captureFrameRate);
            pushByte((byte) this.stats.captureBrightnessLevel);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.stats.sentBitrate = popInt();
            this.stats.sentFrameRate = popInt();
            this.stats.encoderOutputFrameRate = popInt();
            this.stats.rendererOutputFrameRate = popInt();
            this.stats.targetBitrate = popInt();
            this.stats.targetFrameRate = popInt();
            this.stats.qualityAdaptIndication = popInt();
            this.stats.encodedBitrate = popInt();
            this.stats.encodedFrameWidth = popInt();
            this.stats.encodedFrameHeight = popInt();
            this.stats.encodedFrameCount = popInt();
            this.stats.codecType = popByte();
            this.stats.txPacketLossRate = popShort();
            this.stats.captureFrameRate = popInt();
            this.stats.captureBrightnessLevel = popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaEngineEvent extends Marshallable {
        int code;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.code = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaReqConnectMedia2 extends Marshallable {
        public static final int uri = 66453504 | RtcEngineMessage.AGORA_UI_SERVER;
        String connInfo;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushBytes(this.connInfo.getBytes());
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaReqCreateChannel extends Marshallable {
        public static final int uri = 131072 | RtcEngineMessage.AGORA_UI_SERVER;
        String key;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushBytes(this.key.getBytes());
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaReqJoinMeida extends Marshallable {
        public static final int uri = 196608 | RtcEngineMessage.AGORA_UI_SERVER;
        int sid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.sid);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaReqLeaveChannel extends Marshallable {
        public static final int uri = 393216 | RtcEngineMessage.AGORA_UI_SERVER;
        int sid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.sid);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaReqLeaveLinkd extends Marshallable {
        public static final int uri = 262144 | RtcEngineMessage.AGORA_UI_SERVER;
        int sid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.sid);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaReqUserData extends Marshallable {
        public static final int uri = 327680 | RtcEngineMessage.AGORA_UI_SERVER;
        String key;
        String mobileinfo;
        int uid;
        String username;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushBytes(this.key.getBytes());
            pushBytes(this.username.getBytes());
            pushBytes(this.mobileinfo.getBytes());
            pushInt(this.uid);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaResAudioEffectFinished extends Marshallable {
        int soundId;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.soundId = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaResAudioQuality extends Marshallable {
        short delay;
        short lost;
        int peer_uid;
        int quality;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.peer_uid = popInt();
            this.quality = popInt();
            this.delay = popShort();
            this.lost = popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaResFirstRemoteAudioDecoded extends Marshallable {
        public int elapsed;
        public int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.uid);
            pushInt(this.elapsed);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.uid = popInt();
            this.elapsed = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaResJoinMedia extends Marshallable {
        public String channel;
        public int elapsed;
        public boolean firstSuccess;
        public int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.channel = popString16UTF8();
            this.uid = popInt();
            this.elapsed = popInt();
            this.firstSuccess = popBool().booleanValue();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaResLastmileProbeResult extends Marshallable {
        LastmileProbeOneWayResult downlinkReport;
        int rtt;
        short state;
        LastmileProbeOneWayResult uplinkReport;

        public static class LastmileProbeOneWayResult {
            public int availableBandwidth;
            public int jitter;
            public int packetLossRate;
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushShort(this.state);
            pushInt(this.uplinkReport.packetLossRate);
            pushInt(this.uplinkReport.jitter);
            pushInt(this.uplinkReport.availableBandwidth);
            pushInt(this.downlinkReport.packetLossRate);
            pushInt(this.downlinkReport.jitter);
            pushInt(this.downlinkReport.availableBandwidth);
            pushInt(this.rtt);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.state = popShort();
            this.uplinkReport = new LastmileProbeOneWayResult();
            this.downlinkReport = new LastmileProbeOneWayResult();
            this.uplinkReport.packetLossRate = popInt();
            this.uplinkReport.jitter = popInt();
            this.uplinkReport.availableBandwidth = popInt();
            this.downlinkReport.packetLossRate = popInt();
            this.downlinkReport.jitter = popInt();
            this.downlinkReport.availableBandwidth = popInt();
            this.rtt = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaResLastmileQuality extends Marshallable {
        int quality;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.quality = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaResLocalAudioStateChanged extends Marshallable {
        int error;
        int state;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.state = popInt();
            this.error = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaResLocalVideoStateChanged extends Marshallable {
        int error;
        int localVideoState;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.localVideoState = popInt();
            this.error = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaResNetworkQuality extends Marshallable {
        int rxQuality;
        int txQuality;
        int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.uid = popInt();
            this.txQuality = popInt();
            this.rxQuality = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaResRtcStats extends Marshallable {
        int cpuAppUsage;
        int cpuTotalUsage;
        int gatewayRtt;
        int lastmileDelay;
        int memoryAppUsageInKbytes;
        int memoryAppUsageRatio;
        int memoryTotalUsageRatio;
        int rxAudioBytes;
        int rxAudioKBitRate;
        int rxKBitRate;
        int rxPacketLossRate;
        int rxVideoBytes;
        int rxVideoKBitRate;
        int totalDuration;
        int totalRxBytes;
        int totalTxBytes;
        int txAudioBytes;
        int txAudioKBitRate;
        int txKBitRate;
        int txPacketLossRate;
        int txVideoBytes;
        int txVideoKBitRate;
        int users;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.totalDuration = popInt();
            this.totalTxBytes = popInt();
            this.totalRxBytes = popInt();
            this.txAudioBytes = popInt();
            this.rxAudioBytes = popInt();
            this.txVideoBytes = popInt();
            this.rxVideoBytes = popInt();
            this.txKBitRate = popShort();
            this.rxKBitRate = popShort();
            this.txAudioKBitRate = popShort();
            this.rxAudioKBitRate = popShort();
            this.txVideoKBitRate = popShort();
            this.rxVideoKBitRate = popShort();
            this.lastmileDelay = popShort();
            this.txPacketLossRate = popShort();
            this.rxPacketLossRate = popShort();
            this.cpuTotalUsage = popInt();
            this.cpuAppUsage = popInt();
            this.users = popInt();
            this.gatewayRtt = popInt();
            this.memoryTotalUsageRatio = popInt();
            this.memoryAppUsageRatio = popInt();
            this.memoryAppUsageInKbytes = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaResSpeakersReport extends Marshallable {
        int mixVolume;
        Speaker[] speakers;

        public static class Speaker {
            public String channelId;
            public int uid;
            public int vad;
            public int volume;
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.mixVolume);
            int length = this.speakers.length;
            pushShort((short) length);
            for (int i10 = 0; i10 < length; i10++) {
                pushInt(this.speakers[i10].uid);
                pushInt(this.speakers[i10].volume);
                pushInt(this.speakers[i10].vad);
                pushString16(this.speakers[i10].channelId);
            }
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.mixVolume = popInt();
            int iPopShort = popShort();
            if (iPopShort > 0) {
                this.speakers = new Speaker[iPopShort];
                for (int i10 = 0; i10 < iPopShort; i10++) {
                    this.speakers[i10] = new Speaker();
                    this.speakers[i10].uid = popInt();
                    this.speakers[i10].volume = popInt();
                    this.speakers[i10].vad = popInt();
                    this.speakers[i10].channelId = popString16UTF8();
                }
            }
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaResTransportQuality extends Marshallable {
        public int bitrate;
        public short delay;
        public boolean isAudio;
        public short lost;
        public int peer_uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.isAudio = popBool().booleanValue();
            this.peer_uid = popInt();
            this.bitrate = popInt();
            this.delay = popShort();
            this.lost = popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaResUserJoinedEvent extends Marshallable {
        int elapsed;
        int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.uid = popInt();
            this.elapsed = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaResUserOfflineEvent extends Marshallable {
        int reason;
        int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.uid = popInt();
            this.reason = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PMediaResUserState extends Marshallable {
        boolean state;
        int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.uid = popInt();
            this.state = popBool().booleanValue();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PNetworkTypeChanged extends Marshallable {
        public int type;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.type);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.type = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PPrivilegeWillExpire extends Marshallable {
        public String token;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushBytes(this.token.getBytes());
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.token = popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PPublishAudioState extends Marshallable {
        public String channel;
        public int elapsed;
        public int newstate;
        public int oldstate;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushBytes(this.channel.getBytes());
            pushInt(this.oldstate);
            pushInt(this.newstate);
            pushInt(this.elapsed);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.channel = popString16UTF8();
            this.oldstate = popInt();
            this.newstate = popInt();
            this.elapsed = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PPublishVideoState extends Marshallable {
        public String channel;
        public int elapsed;
        public int newstate;
        public int oldstate;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushBytes(this.channel.getBytes());
            pushInt(this.oldstate);
            pushInt(this.newstate);
            pushInt(this.elapsed);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.channel = popString16UTF8();
            this.oldstate = popInt();
            this.newstate = popInt();
            this.elapsed = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PRemoteAudioStat extends Marshallable {
        public IRtcEngineEventHandler.RemoteAudioStats stats = new IRtcEngineEventHandler.RemoteAudioStats();

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.stats.uid);
            pushInt(this.stats.quality);
            pushInt(this.stats.networkTransportDelay);
            pushInt(this.stats.jitterBufferDelay);
            pushInt(this.stats.audioLossRate);
            pushInt(this.stats.numChannels);
            pushInt(this.stats.receivedSampleRate);
            pushInt(this.stats.receivedBitrate);
            pushInt(this.stats.totalFrozenTime);
            pushInt(this.stats.frozenRate);
            pushInt(this.stats.totalActiveTime);
            pushInt(this.stats.publishDuration);
            pushInt(this.stats.qoeQuality);
            pushInt(this.stats.qualityChangedReason);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.stats.uid = popInt();
            this.stats.quality = popInt();
            this.stats.networkTransportDelay = popInt();
            this.stats.jitterBufferDelay = popInt();
            this.stats.audioLossRate = popInt();
            this.stats.numChannels = popInt();
            this.stats.receivedSampleRate = popInt();
            this.stats.receivedBitrate = popInt();
            this.stats.totalFrozenTime = popInt();
            this.stats.frozenRate = popInt();
            this.stats.totalActiveTime = popInt();
            this.stats.publishDuration = popInt();
            this.stats.qoeQuality = popInt();
            this.stats.qualityChangedReason = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PRemoteAudioState extends Marshallable {
        public int elapsed;
        public int reason;
        public int state;
        public int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.uid);
            pushInt(this.state);
            pushInt(this.reason);
            pushInt(this.elapsed);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.uid = popInt();
            this.state = popInt();
            this.reason = popInt();
            this.elapsed = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PRemoteVideoStat extends Marshallable {
        public IRtcEngineEventHandler.RemoteVideoStats stats = new IRtcEngineEventHandler.RemoteVideoStats();

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.stats.uid);
            pushInt(this.stats.delay);
            pushInt(this.stats.width);
            pushInt(this.stats.height);
            pushInt(this.stats.receivedBitrate);
            pushInt(this.stats.decoderOutputFrameRate);
            pushInt(this.stats.rendererOutputFrameRate);
            pushInt(this.stats.packetLossRate);
            pushInt(this.stats.rxStreamType);
            pushInt(this.stats.totalFrozenTime);
            pushInt(this.stats.frozenRate);
            pushInt(this.stats.totalActiveTime);
            pushInt(this.stats.publishDuration);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.stats.uid = popInt();
            this.stats.delay = popInt();
            this.stats.width = popInt();
            this.stats.height = popInt();
            this.stats.receivedBitrate = popInt();
            this.stats.decoderOutputFrameRate = popInt();
            this.stats.rendererOutputFrameRate = popInt();
            this.stats.packetLossRate = popInt();
            this.stats.rxStreamType = popInt();
            this.stats.totalFrozenTime = popInt();
            this.stats.frozenRate = popInt();
            this.stats.totalActiveTime = popInt();
            this.stats.publishDuration = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PRemoteVideoStateExt extends Marshallable {
        public int elapsed;
        public int reason;
        public int state;
        public int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.uid);
            pushInt(this.state);
            pushInt(this.reason);
            pushInt(this.elapsed);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.uid = popInt();
            this.state = popByte();
            this.reason = popByte();
            this.elapsed = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PRtmpStreamingState extends Marshallable {
        public int error;
        public int state;
        public String url;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.url = popString16UTF8();
            this.state = popInt();
            this.error = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PStreamEvent extends Marshallable {
        public int error;
        public String url;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.url = popString16UTF8();
            this.error = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PStreamInjectedStatus extends Marshallable {
        public int status;
        public int uid;
        public String url;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushBytes(this.url.getBytes());
            pushInt(this.uid);
            pushInt(this.status);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.url = popString16UTF8();
            this.uid = popInt();
            this.status = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PStreamMessage extends Marshallable {
        byte[] payload;
        int streamId;
        int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.uid = popInt();
            this.streamId = popInt();
            this.payload = popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PStreamMessageError extends Marshallable {
        int cached;
        int error;
        int missed;
        int streamId;
        int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.uid = popInt();
            this.streamId = popInt();
            this.error = popInt();
            this.missed = popInt();
            this.cached = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PStreamPublished extends Marshallable {
        public int error;
        public String url;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.url = popString16UTF8();
            this.error = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PStreamUnPublished extends Marshallable {
        public String url;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.url = popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PSubscribeAudioState extends Marshallable {
        public String channel;
        public int elapsed;
        public int newstate;
        public int oldstate;
        public int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushBytes(this.channel.getBytes());
            pushInt(this.uid);
            pushInt(this.oldstate);
            pushInt(this.newstate);
            pushInt(this.elapsed);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.channel = popString16UTF8();
            this.uid = popInt();
            this.oldstate = popInt();
            this.newstate = popInt();
            this.elapsed = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PSubscribeVideoState extends Marshallable {
        public String channel;
        public int elapsed;
        public int newstate;
        public int oldstate;
        public int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushBytes(this.channel.getBytes());
            pushInt(this.uid);
            pushInt(this.oldstate);
            pushInt(this.newstate);
            pushInt(this.elapsed);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.channel = popString16UTF8();
            this.uid = popInt();
            this.oldstate = popInt();
            this.newstate = popInt();
            this.elapsed = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PUploadLogResult extends Marshallable {
        public int reason;
        public String requestId;
        public boolean success;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.requestId = popString16();
            this.success = popBool().booleanValue();
            this.reason = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PUserAccountInfo extends Marshallable {
        public int uid;
        public String userAccount;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.uid);
            pushBytes(this.userAccount.getBytes());
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.uid = popInt();
            this.userAccount = popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PUserSuperResolutionEnabled extends Marshallable {
        public boolean enabled;
        public int reason;
        public int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.uid);
            pushBool(Boolean.valueOf(this.enabled));
            pushInt(this.reason);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.uid = popInt();
            this.enabled = popBool().booleanValue();
            this.reason = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PUserTransportStat extends Marshallable {
        public int delay;
        public boolean isAudio;
        public int lost;
        public int peer_uid;
        public int rxKBitRate;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.isAudio = popBool().booleanValue();
            this.peer_uid = popInt();
            this.delay = popShort();
            this.lost = popShort();
            this.rxKBitRate = popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    public static class PVideoNetOptions extends Marshallable {
        short bitrate;
        short frameRate;
        short height;
        short width;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        public void marshall(Marshallable m) {
            m.pushShort(this.width);
            m.pushShort(this.height);
            m.pushShort(this.frameRate);
            m.pushShort(this.bitrate);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.width = popShort();
            this.height = popShort();
            this.frameRate = popShort();
            this.bitrate = popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            marshall(this);
            return super.marshall();
        }
    }

    public static class PVideoSizeChanged extends Marshallable {
        public int height;
        public int rotation;
        public int uid;
        public int width;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer buf) {
            super.marshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer buf) {
            super.unmarshall(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.uid);
            pushInt(this.width);
            pushInt(this.height);
            pushInt(this.rotation);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] vals) {
            super.pushIntArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.uid = popInt();
            this.width = popInt();
            this.height = popInt();
            this.rotation = popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popAll() {
            return super.popAll();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ Boolean popBool() {
            return super.popBool();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte popByte() {
            return super.popByte();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes() {
            return super.popBytes();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] popBytes32() {
            return super.popBytes32();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int popInt() {
            return super.popInt();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ long popInt64() {
            return super.popInt64();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ int[] popIntArray() {
            return super.popIntArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short popShort() {
            return super.popShort();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ short[] popShortArray() {
            return super.popShortArray();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16() {
            return super.popString16();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ String popString16UTF8() {
            return super.popString16UTF8();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBool(Boolean val) {
            super.pushBool(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte val) {
            super.pushByte(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] buf) {
            super.pushBytes(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] buf) {
            super.pushBytes32(buf);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double val) {
            super.pushDouble(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int val) {
            super.pushInt(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long val) {
            super.pushInt64(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short val) {
            super.pushShort(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] vals) {
            super.pushShortArray(vals);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String val) {
            super.pushString16(val);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList vals) {
            super.pushStringArray(vals);
        }
    }

    static class PAudioRoutingChanged extends Marshallable {
        int routing;

        PAudioRoutingChanged() {
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] buf) {
            super.unmarshall(buf);
            this.routing = popInt();
        }
    }
}

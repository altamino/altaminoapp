package io.agora.rtc.internal;

import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import io.agora.rtc.IRtcEngineEventHandler;
import io.agora.rtc.live.LiveInjectStreamConfig;
import io.agora.rtc.live.LiveTranscoding;
import io.agora.rtc.video.AgoraImage;
import io.agora.rtc.video.ChannelMediaInfo;
import io.agora.rtc.video.ChannelMediaRelayConfiguration;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes4.dex */
public class RtcEngineMessage {
    public static short AGORA_UI_SERVER;

    public static class PMediaReqCreateChannel extends Marshallable {
        public static final int uri = RtcEngineMessage.AGORA_UI_SERVER | 131072;
        String key;

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
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
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushBytes(this.key.getBytes());
            return super.marshall();
        }
    }

    public static class PMediaReqJoinMeida extends Marshallable {
        public static final int uri = RtcEngineMessage.AGORA_UI_SERVER | 196608;
        int sid;

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
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
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.sid);
            return super.marshall();
        }
    }

    public static class PMediaReqLeaveLinkd extends Marshallable {
        public static final int uri = RtcEngineMessage.AGORA_UI_SERVER | 262144;
        int sid;

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
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
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.sid);
            return super.marshall();
        }
    }

    public static class PMediaReqUserData extends Marshallable {
        public static final int uri = RtcEngineMessage.AGORA_UI_SERVER | 327680;
        String key;
        String mobileinfo;
        int uid;
        String username;

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
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
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushBytes(this.key.getBytes());
            pushBytes(this.username.getBytes());
            pushBytes(this.mobileinfo.getBytes());
            pushInt(this.uid);
            return super.marshall();
        }
    }

    public static class PMediaReqLeaveChannel extends Marshallable {
        public static final int uri = RtcEngineMessage.AGORA_UI_SERVER | 393216;
        int sid;

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
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
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.sid);
            return super.marshall();
        }
    }

    public static class PMediaReqConnectMedia2 extends Marshallable {
        public static final int uri = RtcEngineMessage.AGORA_UI_SERVER | 66453504;
        String connInfo;

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
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
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushBytes(this.connInfo.getBytes());
            return super.marshall();
        }
    }

    public static class PMediaResAudioQuality extends Marshallable {
        short delay;
        short lost;
        int peer_uid;
        int quality;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.peer_uid = popInt();
            this.quality = popInt();
            this.delay = popShort();
            this.lost = popShort();
        }
    }

    public static class PMediaResTransportQuality extends Marshallable {
        public int bitrate;
        public short delay;
        public boolean isAudio;
        public short lost;
        public int peer_uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.isAudio = popBool().booleanValue();
            this.peer_uid = popInt();
            this.bitrate = popInt();
            this.delay = popShort();
            this.lost = popShort();
        }
    }

    public static class PMediaResRtcStats extends Marshallable {
        int cpuAppUsage;
        int cpuTotalUsage;
        int lastmileDelay;
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
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.totalDuration = popInt();
            this.totalTxBytes = popInt();
            this.totalRxBytes = popInt();
            this.txAudioBytes = popInt();
            this.txVideoBytes = popInt();
            this.rxAudioBytes = popInt();
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
        }
    }

    public static class PMediaResJoinMedia extends Marshallable {
        public String channel;
        public int elapsed;
        public boolean firstSuccess;
        public int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.channel = popString16UTF8();
            this.uid = popInt();
            this.elapsed = popInt();
            this.firstSuccess = popBool().booleanValue();
        }
    }

    public static class PMediaResUserJoinedEvent extends Marshallable {
        int elapsed;
        int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.uid = popInt();
            this.elapsed = popInt();
        }
    }

    public static class PMediaResUserOfflineEvent extends Marshallable {
        int reason;
        int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.uid = popInt();
            this.reason = popInt();
        }
    }

    public static class PMediaResUserState extends Marshallable {
        boolean state;
        int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.uid = popInt();
            this.state = popBool().booleanValue();
        }
    }

    public static class PMediaResNetworkQuality extends Marshallable {
        int rxQuality;
        int txQuality;
        int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.uid = popInt();
            this.txQuality = popInt();
            this.rxQuality = popInt();
        }
    }

    public static class PMediaResLastmileQuality extends Marshallable {
        int quality;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.quality = popInt();
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
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
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
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
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
    }

    public static class PMediaResAudioEffectFinished extends Marshallable {
        int soundId;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.soundId = popInt();
        }
    }

    public static class PMediaResLocalVideoStateChanged extends Marshallable {
        int error;
        int localVideoState;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.localVideoState = popInt();
            this.error = popInt();
        }
    }

    public static class PMediaResLocalAudioStateChanged extends Marshallable {
        int error;
        int state;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.state = popInt();
            this.error = popInt();
        }
    }

    public static class PMediaResFirstRemoteAudioDecoded extends Marshallable {
        public int elapsed;
        public int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.uid);
            pushInt(this.elapsed);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.uid = popInt();
            this.elapsed = popInt();
        }
    }

    public static class MediaResSetupTime extends Marshallable {
        int elapsed;
        boolean firstSuccess;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.elapsed = popInt();
            this.firstSuccess = popBool().booleanValue();
        }
    }

    public static class PMediaResSpeakersReport extends Marshallable {
        int mixVolume;
        Speaker[] speakers;

        public static class Speaker {
            public int uid;
            public int vad;
            public int volume;
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
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.mixVolume);
            int length = this.speakers.length;
            pushShort((short) length);
            for (int i = 0; i < length; i++) {
                pushInt(this.speakers[i].uid);
                pushInt(this.speakers[i].volume);
            }
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.mixVolume = popInt();
            int iPopShort = popShort();
            if (iPopShort > 0) {
                this.speakers = new Speaker[iPopShort];
                for (int i = 0; i < iPopShort; i++) {
                    this.speakers[i] = new Speaker();
                    this.speakers[i].uid = popInt();
                    this.speakers[i].volume = popInt();
                    this.speakers[i].vad = popInt();
                }
            }
        }
    }

    public static class MediaAppContext extends Marshallable {
        MediaNetworkInfo networkInfo;

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
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
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            MediaNetworkInfo mediaNetworkInfo = this.networkInfo;
            if (mediaNetworkInfo != null) {
                mediaNetworkInfo.marshall(this);
            }
            return super.marshall();
        }
    }

    public static class MediaNetworkInfo extends Marshallable {
        int asu;
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
        public void unmarshall(byte[] bArr) {
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
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        public void marshall(Marshallable marshallable) {
            marshallable.pushBytes(this.localIp4.getBytes());
            marshallable.pushBytes(this.gatewayIp4.getBytes());
            marshallable.pushBytes(this.localIp6.getBytes());
            marshallable.pushBytes(this.gatewayIp6.getBytes());
            marshallable.pushInt(this.networkType);
            marshallable.pushInt(this.networkSubtype);
            marshallable.pushInt(this.signalLevel);
            marshallable.pushInt(this.rssi);
            marshallable.pushInt(this.asu);
            String str = this.ssid;
            if (str != null && (str instanceof String)) {
                marshallable.pushBytes(str.getBytes());
            } else {
                marshallable.pushBytes("".getBytes());
            }
            String str2 = this.bssid;
            if (str2 != null) {
                marshallable.pushBytes(str2.getBytes());
            } else {
                marshallable.pushBytes("".getBytes());
            }
            ArrayList<String> arrayList = this.dnsList;
            if (arrayList != null) {
                marshallable.pushStringArray(arrayList);
            } else {
                marshallable.pushStringArray(new ArrayList<>());
            }
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            marshall(this);
            return super.marshall();
        }
    }

    public static class PVideoNetOptions extends Marshallable {
        short bitrate;
        short frameRate;
        short height;
        short width;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        public void marshall(Marshallable marshallable) {
            marshallable.pushShort(this.width);
            marshallable.pushShort(this.height);
            marshallable.pushShort(this.frameRate);
            marshallable.pushShort(this.bitrate);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            marshall(this);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.width = popShort();
            this.height = popShort();
            this.frameRate = popShort();
            this.bitrate = popShort();
        }
    }

    public static class PRemoteVideoStat extends Marshallable {
        public IRtcEngineEventHandler.RemoteVideoStats stats = new IRtcEngineEventHandler.RemoteVideoStats();

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
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
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
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
        }
    }

    public static class PRemoteAudioStat extends Marshallable {
        public IRtcEngineEventHandler.RemoteAudioStats stats = new IRtcEngineEventHandler.RemoteAudioStats();

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
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
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
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
        }
    }

    public static class PLocalAudioStat extends Marshallable {
        public IRtcEngineEventHandler.LocalAudioStats stats = new IRtcEngineEventHandler.LocalAudioStats();

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.stats.numChannels);
            pushInt(this.stats.sentSampleRate);
            pushInt(this.stats.sentBitrate);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.stats.numChannels = popInt();
            this.stats.sentSampleRate = popInt();
            this.stats.sentBitrate = popInt();
        }
    }

    public static class PLocalVideoStat extends Marshallable {
        public IRtcEngineEventHandler.LocalVideoStats stats = new IRtcEngineEventHandler.LocalVideoStats();

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
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
            pushInt(this.stats.codecType);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
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
        }
    }

    public static class PFirstRemoteVideoFrame extends Marshallable {
        public int elapsed;
        public int height;
        public int uid;
        public int width;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
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
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.uid = popInt();
            this.width = popInt();
            this.height = popInt();
            this.elapsed = popInt();
        }
    }

    public static class PFirstLocalVideoFrame extends Marshallable {
        public int elapsed;
        public int height;
        public int width;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.width);
            pushInt(this.height);
            pushInt(this.elapsed);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.width = popInt();
            this.height = popInt();
            this.elapsed = popInt();
        }
    }

    public static class PFirstRemoteVideoDecoded extends Marshallable {
        public int elapsed;
        public int height;
        public int uid;
        public int width;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
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
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.uid = popInt();
            this.width = popInt();
            this.height = popInt();
            this.elapsed = popInt();
        }
    }

    public static class PCameraFocusAreaChanged extends Marshallable {
        public int height;
        public int width;
        public int x;
        public int y;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.x);
            pushInt(this.y);
            pushInt(this.width);
            pushInt(this.height);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.x = popInt();
            this.y = popInt();
            this.width = popInt();
            this.height = popInt();
        }
    }

    public static class PCameraExposureAreaChanged extends Marshallable {
        public int height;
        public int width;
        public int x;
        public int y;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.x);
            pushInt(this.y);
            pushInt(this.width);
            pushInt(this.height);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.x = popInt();
            this.y = popInt();
            this.width = popInt();
            this.height = popInt();
        }
    }

    public static class PVideoSizeChanged extends Marshallable {
        public int height;
        public int rotation;
        public int uid;
        public int width;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
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
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.uid = popInt();
            this.width = popInt();
            this.height = popInt();
            this.rotation = popInt();
        }
    }

    public static class PMediaEngineEvent extends Marshallable {
        int code;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.code = popInt();
        }
    }

    public static class PError extends Marshallable {
        public int err;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.err = popInt();
        }
    }

    public static class PApiCallExecuted extends Marshallable {
        public String api;
        public int error;
        public String result;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.error = popInt();
            this.api = popString16UTF8();
            this.result = popString16UTF8();
        }
    }

    public static class PStreamMessage extends Marshallable {
        byte[] payload;
        int streamId;
        int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.uid = popInt();
            this.streamId = popInt();
            this.payload = popBytes();
        }
    }

    public static class PStreamMessageError extends Marshallable {
        int cached;
        int error;
        int missed;
        int streamId;
        int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.uid = popInt();
            this.streamId = popInt();
            this.error = popInt();
            this.missed = popInt();
            this.cached = popInt();
        }
    }

    public static class PFirstRemoteAudioFrame extends Marshallable {
        public int elapsed;
        public int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.uid);
            pushInt(this.elapsed);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.uid = popInt();
            this.elapsed = popInt();
        }
    }

    public static class PFirstLocalAudioFrame extends Marshallable {
        public int elapsed;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.elapsed);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.elapsed = popInt();
        }
    }

    public static class PActiveSpeaker extends Marshallable {
        public int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.uid = popInt();
        }
    }

    public static class PClientRoleChanged extends Marshallable {
        int newRole;
        int oldRole;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.oldRole = popInt();
            this.newRole = popInt();
        }
    }

    public static class PRtmpStreamingState extends Marshallable {
        public int error;
        public int state;
        public String url;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.url = popString16UTF8();
            this.state = popInt();
            this.error = popInt();
        }
    }

    public static class PStreamPublished extends Marshallable {
        public int error;
        public String url;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.url = popString16UTF8();
            this.error = popInt();
        }
    }

    public static class PStreamUnPublished extends Marshallable {
        public String url;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.url = popString16UTF8();
        }
    }

    public static class PLiveTranscoding extends Marshallable {
        private static final short SERVER_TYPE = 0;
        private static final short URI = 23;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] marshall() {
            return super.marshall();
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
        }

        private void marshallUserConfig(Marshallable marshallable, LiveTranscoding.TranscodingUser transcodingUser) {
            marshallable.pushInt(transcodingUser.uid);
            marshallable.pushInt(transcodingUser.x);
            marshallable.pushInt(transcodingUser.y);
            marshallable.pushInt(transcodingUser.width);
            marshallable.pushInt(transcodingUser.height);
            marshallable.pushInt(transcodingUser.zOrder);
            marshallable.pushDouble(transcodingUser.alpha);
            marshallable.pushInt(transcodingUser.audioChannel);
        }

        private void marshallImage(Marshallable marshallable, AgoraImage agoraImage) {
            marshallable.pushString16(agoraImage.url);
            marshallable.pushInt(agoraImage.x);
            marshallable.pushInt(agoraImage.y);
            marshallable.pushInt(agoraImage.width);
            marshallable.pushInt(agoraImage.height);
        }

        private void marshall(Marshallable marshallable, LiveTranscoding liveTranscoding) {
            marshallable.pushShort(SERVER_TYPE);
            marshallable.pushShort(URI);
            marshallable.pushInt(liveTranscoding.width);
            marshallable.pushInt(liveTranscoding.height);
            marshallable.pushInt(liveTranscoding.videoGop);
            marshallable.pushInt(liveTranscoding.videoFramerate);
            marshallable.pushInt(LiveTranscoding.VideoCodecProfileType.getValue(liveTranscoding.videoCodecProfile));
            marshallable.pushInt(liveTranscoding.videoBitrate);
            if (liveTranscoding.watermark == null) {
                liveTranscoding.watermark = new AgoraImage();
            }
            marshallImage(marshallable, liveTranscoding.watermark);
            if (liveTranscoding.backgroundImage == null) {
                liveTranscoding.backgroundImage = new AgoraImage();
            }
            marshallImage(marshallable, liveTranscoding.backgroundImage);
            marshallable.pushBool(Boolean.valueOf(liveTranscoding.lowLatency));
            marshallable.pushInt(LiveTranscoding.AudioSampleRateType.getValue(liveTranscoding.audioSampleRate));
            marshallable.pushInt(liveTranscoding.audioBitrate);
            marshallable.pushInt(liveTranscoding.audioChannels);
            marshallable.pushInt(LiveTranscoding.AudioCodecProfileType.getValue(liveTranscoding.audioCodecProfile));
            marshallable.pushInt(liveTranscoding.backgroundColor & ViewCompat.MEASURED_SIZE_MASK);
            if (TextUtils.isEmpty(liveTranscoding.userConfigExtraInfo)) {
                liveTranscoding.userConfigExtraInfo = "";
            }
            marshallable.pushString16(liveTranscoding.userConfigExtraInfo);
            if (TextUtils.isEmpty(liveTranscoding.metadata)) {
                liveTranscoding.metadata = "";
            }
            marshallable.pushString16(liveTranscoding.metadata);
            if (liveTranscoding.getUsers() != null && liveTranscoding.getUsers().size() > 0) {
                pushShort((short) liveTranscoding.getUserCount());
                Iterator<LiveTranscoding.TranscodingUser> it = liveTranscoding.getUsers().iterator();
                while (it.hasNext()) {
                    marshallUserConfig(marshallable, it.next());
                }
                return;
            }
            pushShort((short) 0);
        }

        public byte[] marshall(LiveTranscoding liveTranscoding) {
            marshall(this, liveTranscoding);
            return super.marshall();
        }
    }

    public static class PChannelMediaRelayConfiguration extends Marshallable {
        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] marshall() {
            return super.marshall();
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
        }

        private void marshallChannelInfo(Marshallable marshallable, ChannelMediaInfo channelMediaInfo) {
            marshallable.pushString16(channelMediaInfo.channelName);
            marshallable.pushString16(channelMediaInfo.token);
            marshallable.pushInt(channelMediaInfo.uid);
        }

        private void marshall(Marshallable marshallable, ChannelMediaRelayConfiguration channelMediaRelayConfiguration) {
            marshallChannelInfo(marshallable, channelMediaRelayConfiguration.getSrcChannelMediaInfo());
            pushShort((short) channelMediaRelayConfiguration.getDestChannelMediaInfos().size());
            Iterator<String> it = channelMediaRelayConfiguration.getDestChannelMediaInfos().keySet().iterator();
            while (it.hasNext()) {
                marshallChannelInfo(marshallable, channelMediaRelayConfiguration.getDestChannelMediaInfos().get(it.next()));
            }
        }

        public byte[] marshall(ChannelMediaRelayConfiguration channelMediaRelayConfiguration) {
            marshall(this, channelMediaRelayConfiguration);
            return super.marshall();
        }
    }

    public static class PInjectStreamConfig extends Marshallable {
        private static final short SERVER_TYPE = 0;
        private static final short URI = 25;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ byte[] marshall() {
            return super.marshall();
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
        }

        private void marshall(Marshallable marshallable, LiveInjectStreamConfig liveInjectStreamConfig) {
            marshallable.pushShort(SERVER_TYPE);
            marshallable.pushShort(URI);
            marshallable.pushInt(liveInjectStreamConfig.width);
            marshallable.pushInt(liveInjectStreamConfig.height);
            marshallable.pushInt(liveInjectStreamConfig.videoGop);
            marshallable.pushInt(liveInjectStreamConfig.videoFramerate);
            marshallable.pushInt(liveInjectStreamConfig.videoBitrate);
            marshallable.pushInt(LiveInjectStreamConfig.AudioSampleRateType.getValue(liveInjectStreamConfig.audioSampleRate));
            marshallable.pushInt(liveInjectStreamConfig.audioBitrate);
            marshallable.pushInt(liveInjectStreamConfig.audioChannels);
        }

        public byte[] marshall(LiveInjectStreamConfig liveInjectStreamConfig) {
            marshall(this, liveInjectStreamConfig);
            return super.marshall();
        }
    }

    public static class PHostInResponse extends Marshallable {
        public boolean accepted;
        public int error;
        public int ownerUid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.ownerUid = popInt();
            this.accepted = popBool().booleanValue();
            this.error = popInt();
        }
    }

    public static class PHostInRequest extends Marshallable {
        public int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.uid = popInt();
        }
    }

    public static class PHostInStopped extends Marshallable {
        public int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.uid = popInt();
        }
    }

    public static class PStreamInjectedStatus extends Marshallable {
        public int status;
        public int uid;
        public String url;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushBytes(this.url.getBytes());
            pushInt(this.uid);
            pushInt(this.status);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.url = popString16UTF8();
            this.uid = popInt();
            this.status = popInt();
        }
    }

    public static class PPrivilegeWillExpire extends Marshallable {
        public String token;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushBytes(this.token.getBytes());
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.token = popString16UTF8();
        }
    }

    public static class PRemoteAudioState extends Marshallable {
        public int elapsed;
        public int reason;
        public int state;
        public int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
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
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.uid = popInt();
            this.state = popInt();
            this.reason = popInt();
            this.elapsed = popInt();
        }
    }

    public static class PRemoteVideoStateExt extends Marshallable {
        public int elapsed;
        public int reason;
        public int state;
        public int uid;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
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
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.uid = popInt();
            this.state = popByte();
            this.reason = popByte();
            this.elapsed = popInt();
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
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.routing = popInt();
        }
    }

    public static class PAndroidContextInfo extends Marshallable {
        public String androidID;
        public String configDir;
        public String dataDir;
        public String device;
        public String deviceInfo;
        public String imei;
        public String macAddress;
        public String pluginDir;
        public String systemInfo;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushBytes(this.device.getBytes());
            pushBytes(this.deviceInfo.getBytes());
            pushBytes(this.systemInfo.getBytes());
            pushBytes(this.configDir.getBytes());
            pushBytes(this.dataDir.getBytes());
            pushBytes(this.pluginDir.getBytes());
            pushBytes(this.imei.getBytes());
            pushBytes(this.macAddress.getBytes());
            pushBytes(this.androidID.getBytes());
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.device = popString16UTF8();
            this.deviceInfo = popString16UTF8();
            this.systemInfo = popString16UTF8();
            this.configDir = popString16UTF8();
            this.dataDir = popString16UTF8();
            this.pluginDir = popString16UTF8();
            this.imei = popString16UTF8();
            this.macAddress = popString16UTF8();
            this.androidID = popString16UTF8();
        }
    }

    public static class PCrossChannelState extends Marshallable {
        public int code;
        public int state;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.state);
            pushInt(this.code);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.state = popInt();
            this.code = popInt();
        }
    }

    public static class PCrossChannelEvent extends Marshallable {
        public int code;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.code);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.code = popInt();
        }
    }

    public static class PUserTransportStat extends Marshallable {
        public int delay;
        public boolean isAudio;
        public int lost;
        public int peer_uid;
        public int rxKBitRate;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.isAudio = popBool().booleanValue();
            this.peer_uid = popInt();
            this.delay = popShort();
            this.lost = popShort();
            this.rxKBitRate = popShort();
        }
    }

    public static class PLocalFallbackStatus extends Marshallable {
        boolean state;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.state = popBool().booleanValue();
        }
    }

    public static class PLocalAudioEnabled extends Marshallable {
        boolean enabled;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.enabled = popBool().booleanValue();
        }
    }

    public static class PConnectionState extends Marshallable {
        public int reason;
        public int state;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.state);
            pushInt(this.reason);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.state = popInt();
            this.reason = popInt();
        }
    }

    public static class PNetworkTypeChanged extends Marshallable {
        public int type;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.type);
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.type = popInt();
        }
    }

    public static class PUserAccountInfo extends Marshallable {
        public int uid;
        public String userAccount;

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void clear() {
            super.clear();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ ByteBuffer getBuffer() {
            return super.getBuffer();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void marshall(ByteBuffer byteBuffer) {
            super.marshall(byteBuffer);
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
        public /* bridge */ /* synthetic */ void pushBool(Boolean bool) {
            super.pushBool(bool);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushByte(byte b) {
            super.pushByte(b);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes(byte[] bArr) {
            super.pushBytes(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushBytes32(byte[] bArr) {
            super.pushBytes32(bArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushDouble(double d) {
            super.pushDouble(d);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt(int i) {
            super.pushInt(i);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushInt64(long j) {
            super.pushInt64(j);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(int[] iArr) {
            super.pushIntArray(iArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushIntArray(Integer[] numArr) {
            super.pushIntArray(numArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShort(short s) {
            super.pushShort(s);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushShortArray(short[] sArr) {
            super.pushShortArray(sArr);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushString16(String str) {
            super.pushString16(str);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void pushStringArray(ArrayList arrayList) {
            super.pushStringArray(arrayList);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public /* bridge */ /* synthetic */ void unmarshall(ByteBuffer byteBuffer) {
            super.unmarshall(byteBuffer);
        }

        @Override // io.agora.rtc.internal.Marshallable
        public byte[] marshall() {
            pushInt(this.uid);
            pushBytes(this.userAccount.getBytes());
            return super.marshall();
        }

        @Override // io.agora.rtc.internal.Marshallable
        public void unmarshall(byte[] bArr) {
            super.unmarshall(bArr);
            this.uid = popInt();
            this.userAccount = popString16UTF8();
        }
    }
}

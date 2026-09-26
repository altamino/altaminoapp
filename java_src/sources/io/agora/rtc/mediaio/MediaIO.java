package io.agora.rtc.mediaio;

/* JADX INFO: loaded from: classes2.dex */
public class MediaIO {

    public enum BufferType {
        BYTE_BUFFER(1),
        BYTE_ARRAY(2),
        TEXTURE(3);

        final int value;

        public int intValue() {
            return this.value;
        }

        BufferType(int value) {
            this.value = value;
        }
    }

    public enum CaptureType {
        UNKNOWN(0),
        CAMERA(1),
        SCREEN(2);

        final int value;

        public int intValue() {
            return this.value;
        }

        CaptureType(int value) {
            this.value = value;
        }
    }

    public enum ContentHint {
        NONE(0),
        MOTION(1),
        DETAIL(2);

        final int value;

        public int intValue() {
            return this.value;
        }

        ContentHint(int value) {
            this.value = value;
        }
    }

    public enum PixelFormat {
        I420(1),
        NV21(3),
        RGBA(4),
        TEXTURE_2D(10),
        TEXTURE_OES(11);

        final int value;

        public int intValue() {
            return this.value;
        }

        PixelFormat(int value) {
            this.value = value;
        }
    }
}

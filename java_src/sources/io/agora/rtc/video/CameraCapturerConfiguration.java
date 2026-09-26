package io.agora.rtc.video;

/* JADX INFO: loaded from: classes4.dex */
public class CameraCapturerConfiguration {
    public CAMERA_DIRECTION cameraDirection;
    public CaptureDimensions dimensions;
    public CAPTURER_OUTPUT_PREFERENCE preference;
    public static final CaptureDimensions CD_640x480 = new CaptureDimensions(640, 480);
    public static final CaptureDimensions CD_1280x720 = new CaptureDimensions(1280, 720);
    public static final CaptureDimensions CD_1920x1080 = new CaptureDimensions(1920, 1080);

    public static class CaptureDimensions {
        public int height;
        public int width;

        public CaptureDimensions(int width, int height) {
            this.width = width;
            this.height = height;
        }

        public CaptureDimensions() {
            this.width = 640;
            this.height = 480;
        }
    }

    public CameraCapturerConfiguration(CAPTURER_OUTPUT_PREFERENCE preference, CAMERA_DIRECTION cameraDirection) {
        this.preference = preference;
        this.cameraDirection = cameraDirection;
    }

    public enum CAMERA_DIRECTION {
        CAMERA_REAR(0),
        CAMERA_FRONT(1);

        private int value;

        public int getValue() {
            return this.value;
        }

        CAMERA_DIRECTION(int v5) {
            this.value = v5;
        }
    }

    public enum CAPTURER_OUTPUT_PREFERENCE {
        CAPTURER_OUTPUT_PREFERENCE_AUTO(0),
        CAPTURER_OUTPUT_PREFERENCE_PERFORMANCE(1),
        CAPTURER_OUTPUT_PREFERENCE_PREVIEW(2),
        CAPTURER_OUTPUT_PREFERENCE_MANUAL(3);

        private int value;

        public int getValue() {
            return this.value;
        }

        CAPTURER_OUTPUT_PREFERENCE(int v5) {
            this.value = v5;
        }
    }

    public CameraCapturerConfiguration(int width, int height, CAMERA_DIRECTION cameraDirection) {
        this.preference = CAPTURER_OUTPUT_PREFERENCE.CAPTURER_OUTPUT_PREFERENCE_MANUAL;
        this.cameraDirection = cameraDirection;
        this.dimensions = new CaptureDimensions(width, height);
    }

    public CameraCapturerConfiguration(CaptureDimensions dimensions, CAMERA_DIRECTION cameraDirection) {
        this.preference = CAPTURER_OUTPUT_PREFERENCE.CAPTURER_OUTPUT_PREFERENCE_MANUAL;
        this.cameraDirection = cameraDirection;
        this.dimensions = dimensions;
    }
}

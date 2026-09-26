package io.agora.rtc.video;

/* JADX INFO: loaded from: classes7.dex */
public class WatermarkOptions {
    public boolean visibleInPreview = true;
    public Rectangle positionInLandscapeMode = new Rectangle();
    public Rectangle positionInPortraitMode = new Rectangle();

    public static class Rectangle {
        public int height;
        public int width;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f3246x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f3247y;

        public Rectangle() {
            this.f3246x = 0;
            this.f3247y = 0;
            this.width = 0;
            this.height = 0;
        }

        public Rectangle(int x_, int y_, int width_, int height_) {
            this.f3246x = x_;
            this.f3247y = y_;
            this.width = width_;
            this.height = height_;
        }
    }
}

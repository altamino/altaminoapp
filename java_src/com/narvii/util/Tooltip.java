package com.narvii.util;

import android.view.View;

/* loaded from: classes3.dex */
public class Tooltip {
    public static final int FINGER_END = 2;
    public static final int FINGER_START = 1;
    public View anchorView;
    public boolean autoHide;
    public int customTooltipBubbleLayout;
    public int finger;
    public Boolean indicatorUp;
    public boolean isRightAlign;
    boolean linkClickWithAnchorView;
    View.OnClickListener onClickListener;
    Callback<View> onCustomViewListener;
    public View rootView;
    public String text;
    public int textId;
    public float textSize;
    public int autoHideDuration = 5000;
    public boolean showOnlyOnce = true;
    public int backgroundColor = -1;
    public boolean isVibrate = true;
    public Integer maxWidth = null;

    public static Builder builder() {
        return new Builder();
    }

    public static class Builder {
        Tooltip tooltip = new Tooltip();

        public Builder textId(int i) {
            this.tooltip.textId = i;
            return this;
        }

        public Builder indicatorUp(boolean z) {
            this.tooltip.indicatorUp = Boolean.valueOf(z);
            return this;
        }

        public Builder endFinger() {
            this.tooltip.finger = 2;
            return this;
        }

        public Builder startFinger() {
            this.tooltip.finger = 1;
            return this;
        }

        public Builder anchorView(View view) {
            this.tooltip.anchorView = view;
            return this;
        }

        public Builder rootView(View view) {
            this.tooltip.rootView = view;
            return this;
        }

        public Builder autoHide() {
            this.tooltip.autoHide = true;
            return this;
        }

        public Builder text(String str) {
            this.tooltip.text = str;
            return this;
        }

        public Builder textSize(float f) {
            this.tooltip.textSize = f;
            return this;
        }

        public Builder background(int i) {
            this.tooltip.backgroundColor = i;
            return this;
        }

        public Builder showOnlyOnce(boolean z) {
            this.tooltip.showOnlyOnce = z;
            return this;
        }

        public Builder autoHideDuration(int i) {
            this.tooltip.autoHideDuration = i;
            return this;
        }

        public Builder onClickListener(View.OnClickListener onClickListener) {
            this.tooltip.onClickListener = onClickListener;
            return this;
        }

        public Builder linkClickWithAnchorView() {
            this.tooltip.linkClickWithAnchorView = true;
            return this;
        }

        public Builder isRightAlign(boolean z) {
            this.tooltip.isRightAlign = z;
            return this;
        }

        public Builder customTooltipBubbleLayout(int i) {
            this.tooltip.customTooltipBubbleLayout = i;
            return this;
        }

        public Builder doCustomTooltipBubble(Callback<View> callback) {
            this.tooltip.onCustomViewListener = callback;
            return this;
        }

        public Builder isVibrate(boolean z) {
            this.tooltip.isVibrate = z;
            return this;
        }

        public Builder maxWidth(int i) {
            this.tooltip.maxWidth = Integer.valueOf(i);
            return this;
        }

        public Tooltip build() {
            return this.tooltip;
        }
    }
}

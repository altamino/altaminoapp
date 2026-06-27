package com.narvii.story.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.NVPlayerManager;

/* loaded from: classes3.dex */
public class StoryItemInterceptLayout extends FrameLayout implements View.OnClickListener, View.OnTouchListener {
    private static final long DOUBLE_CLICK_DISABLE_DURATION = 1000;
    public static final int HORIZONTAL = 1;
    public static final int VERTICAL = 0;
    private View btnBottom;
    private View btnLeft;
    private View btnRight;
    private View btnTop;
    private GestureDetector gestureDetector;
    private View horizontalLayout;
    ClickListener itemClickListener;
    private int orientation;
    private INVPlayer player;
    private boolean storyPlayEnable;
    private View target;
    private View verticalLayout;

    public interface ClickListener {
        void onDoubleClicked(MotionEvent motionEvent);

        void onLongClick();

        void onNextDirectionClicked();

        void onPrevDirectionClicked();
    }

    public void setItemClickListener(ClickListener clickListener) {
        this.itemClickListener = clickListener;
    }

    public StoryItemInterceptLayout(Context context) {
        this(context, null);
    }

    public StoryItemInterceptLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        FrameLayout.inflate(getContext(), R.layout.story_intercept_layout, this);
        this.verticalLayout = findViewById(R.id.vertical_layout);
        this.horizontalLayout = findViewById(R.id.horizontal_layout);
        this.btnLeft = findViewById(R.id.left);
        this.btnLeft.setOnTouchListener(this);
        this.btnBottom = findViewById(R.id.bottom);
        this.btnBottom.setOnTouchListener(this);
        this.btnTop = findViewById(R.id.top);
        this.btnTop.setOnTouchListener(this);
        this.btnRight = findViewById(R.id.right);
        this.btnRight.setOnTouchListener(this);
        this.gestureDetector = new GestureDetector(context, new DoubleClickConfirm());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.bottom /* 2131296583 */:
            case R.id.right /* 2131298686 */:
                ClickListener clickListener = this.itemClickListener;
                if (clickListener != null) {
                    clickListener.onNextDirectionClicked();
                    break;
                }
                break;
            case R.id.left /* 2131297875 */:
            case R.id.top /* 2131299248 */:
                ClickListener clickListener2 = this.itemClickListener;
                if (clickListener2 != null) {
                    clickListener2.onPrevDirectionClicked();
                    break;
                }
                break;
        }
    }

    public void setOrientation(int i) {
        this.orientation = i;
        updateViews();
    }

    private void updateViews() {
        this.verticalLayout.setVisibility(this.orientation == 0 ? 0 : 8);
        this.horizontalLayout.setVisibility(this.orientation != 1 ? 8 : 0);
    }

    private class DoubleClickConfirm extends GestureDetector.SimpleOnGestureListener {
        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        private DoubleClickConfirm() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            ClickListener clickListener;
            if (!StoryItemInterceptLayout.this.storyPlayEnable) {
                return false;
            }
            if (StoryItemInterceptLayout.this.player == null) {
                StoryItemInterceptLayout.this.player = NVPlayerManager.getNVPlayer(NVApplication.instance());
            }
            if (StoryItemInterceptLayout.this.player.getCurrentPosition() < 1000) {
                if (StoryItemInterceptLayout.this.target != null && motionEvent.getAction() == 1) {
                    StoryItemInterceptLayout storyItemInterceptLayout = StoryItemInterceptLayout.this;
                    storyItemInterceptLayout.onClick(storyItemInterceptLayout.target);
                }
                return false;
            }
            if (motionEvent.getAction() == 1 && (clickListener = StoryItemInterceptLayout.this.itemClickListener) != null) {
                clickListener.onDoubleClicked(motionEvent);
            }
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (StoryItemInterceptLayout.this.target == null) {
                return true;
            }
            StoryItemInterceptLayout storyItemInterceptLayout = StoryItemInterceptLayout.this;
            storyItemInterceptLayout.onClick(storyItemInterceptLayout.target);
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            ClickListener clickListener = StoryItemInterceptLayout.this.itemClickListener;
            if (clickListener != null) {
                clickListener.onLongClick();
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        this.target = view;
        return this.gestureDetector.onTouchEvent(motionEvent);
    }

    public void setStoryPlayEnable(boolean z) {
        this.storyPlayEnable = z;
    }
}

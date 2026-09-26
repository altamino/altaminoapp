package com.narvii.video.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.mediaeditor.R;
import com.narvii.util.FileUtils;
import com.narvii.util.Utils;
import com.narvii.video.model.BaseClipInfoPack;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.NVImageView;
import java.io.File;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;

/* JADX INFO: loaded from: classes2.dex */
public final class ViceTimeLineWrapperView extends FrameLayout {
    private int additionalFrameOffsetDx;
    private long downEventTimeStamp;

    @NotNull
    private u<Float, Float> downPointer;
    private boolean endEdgeReached;

    @NotNull
    private GestureDetector gestureDetector;
    private boolean inEditMode;
    private float initialTimeLineScrollDx;
    private float lastMoveX;
    private final int mTouchSlop;
    private float mainTrackStartDx;

    @Nullable
    private View.OnClickListener onSelfClickListener;

    @Nullable
    private RecyclerView.OnScrollListener onTimeLineScrollListener;
    private boolean rtl;
    private float scrollRangeMaxDx;
    private float scrollRangeMinDx;
    private boolean startEdgeReached;
    private float touchAvailableMaxX;
    private float touchAvailableMinX;

    @Nullable
    private MediaTimeLineComponent viceTimeLine;

    public interface IViceTimeLineEditCallback {
        void onViceTimeLineEdit(int i10, int i11);
    }

    public final int getMTouchSlop() {
        return this.mTouchSlop;
    }

    public final void updateScrollingRange(int i10, int i11) {
        int i12 = this.additionalFrameOffsetDx;
        this.scrollRangeMinDx = i10 + i12;
        this.scrollRangeMaxDx = i11 + i12;
    }

    public final void updateVisibleContentSection(float f, int i10, int i11, int i12, float f6, float f7, boolean z6) {
        float f10;
        int iC;
        ViceTimeLineCutterView viceTimeLineCutterView = (ViceTimeLineCutterView) findViewById(R.id.vice_time_line_cutter);
        RectF currentTimelineRect = viceTimeLineCutterView.getCurrentTimelineRect();
        if (z6) {
            f10 = this.rtl ? currentTimelineRect.right : currentTimelineRect.left;
        } else {
            f10 = f;
        }
        if (z6) {
            System.out.println("testtest cutter width = " + g8.c.c(currentTimelineRect.width()) + " sectionWidth = " + i10);
            iC = g8.c.c(currentTimelineRect.width());
        } else {
            iC = i10;
        }
        boolean z10 = this.rtl;
        this.touchAvailableMinX = z10 ? f10 - iC : f10;
        this.touchAvailableMaxX = z10 ? f10 : iC + f10;
        this.mainTrackStartDx = f6;
        updateContentSection(f10, iC);
        float f11 = f10 - (this.rtl ? iC : 0);
        viceTimeLineCutterView.layoutRect(f11, getTop(), f11 + iC, getBottom(), i11, i12, f6, f7);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViceTimeLineWrapperView(@NotNull Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        t.j(context, "context");
        t.j(attributes, "attributes");
        this.rtl = Utils.isRtl();
        this.gestureDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.video.widget.ViceTimeLineWrapperView$gestureDetector$1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(@Nullable MotionEvent motionEvent, @NotNull MotionEvent e2, float f, float f6) {
                t.j(e2, "e2");
                return true;
            }
        });
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop() * 2;
        Float fValueOf = Float.valueOf(-1.0f);
        this.downPointer = new u<>(fValueOf, fValueOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateContentSection(float f, int i10) {
        TextView textView = (TextView) findViewById(R.id.clip_name);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.track_content_panel);
        float width = f - (this.rtl ? getWidth() : 0);
        ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
        if (i10 != layoutParams.width) {
            CharSequence text = textView.getText();
            textView.setText("");
            layoutParams.width = i10;
            linearLayout.setLayoutParams(layoutParams);
            textView.setText(text);
        }
        linearLayout.setTranslationX(width);
    }

    public final void addTimeLineOnScrollListener(@NotNull RecyclerView.OnScrollListener listener) {
        t.j(listener, "listener");
        this.onTimeLineScrollListener = listener;
        MediaTimeLineComponent mediaTimeLineComponent = this.viceTimeLine;
        if (mediaTimeLineComponent != null) {
            mediaTimeLineComponent.addTimeLineOnScrollListener(listener);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(@NotNull MotionEvent ev) {
        View.OnClickListener onClickListener;
        float x6;
        float x10;
        t.j(ev, "ev");
        ViceTimeLineCutterView viceTimeLineCutterView = (ViceTimeLineCutterView) findViewById(R.id.vice_time_line_cutter);
        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) findViewById(R.id.audio_time_line);
        if (this.gestureDetector.onTouchEvent(ev)) {
            RecyclerView.OnScrollListener onScrollListener = this.onTimeLineScrollListener;
            if (onScrollListener != null) {
                onScrollListener.onScrollStateChanged(horizontalRecyclerView, 0);
            }
            viceTimeLineCutterView.onActionUpInterceptedForFling(ev);
            return true;
        }
        if (ev.getAction() == 0) {
            this.downEventTimeStamp = System.currentTimeMillis();
            this.downPointer = new u<>(Float.valueOf(ev.getX()), Float.valueOf(ev.getY()));
        } else if (ev.getAction() == 1) {
            float fAbs = Math.abs(this.downPointer.c().floatValue() - ev.getX()) + Math.abs(this.downPointer.d().floatValue() - ev.getY());
            long jCurrentTimeMillis = System.currentTimeMillis() - this.downEventTimeStamp;
            float f = this.touchAvailableMinX;
            float f6 = this.touchAvailableMaxX;
            float fFloatValue = this.downPointer.c().floatValue();
            if (f <= fFloatValue && fFloatValue <= f6 && fAbs <= this.mTouchSlop && jCurrentTimeMillis <= 1000 && (onClickListener = this.onSelfClickListener) != null) {
                onClickListener.onClick(this);
            }
        }
        if (this.inEditMode) {
            return super.dispatchTouchEvent(ev);
        }
        float f7 = this.touchAvailableMinX;
        int i10 = this.mTouchSlop;
        float f10 = f7 - i10;
        float f11 = this.touchAvailableMaxX + i10;
        float x11 = ev.getX();
        if (f10 > x11 || x11 > f11) {
            if (ev.getAction() == 1 || ev.getAction() == 3) {
                this.startEdgeReached = false;
                this.endEdgeReached = false;
                RecyclerView.OnScrollListener onScrollListener2 = this.onTimeLineScrollListener;
                if (onScrollListener2 != null) {
                    onScrollListener2.onScrollStateChanged(horizontalRecyclerView, 0);
                }
            }
            return true;
        }
        if (ev.getAction() == 0) {
            this.startEdgeReached = false;
            this.endEdgeReached = false;
            this.lastMoveX = ev.getX();
            MediaTimeLineComponent mediaTimeLineComponent = this.viceTimeLine;
            this.initialTimeLineScrollDx = mediaTimeLineComponent != null ? mediaTimeLineComponent.getTimeLineScrolledDx(false) : 0;
            super.dispatchTouchEvent(ev);
        } else if (ev.getAction() == 1 || ev.getAction() == 3) {
            this.startEdgeReached = false;
            this.endEdgeReached = false;
            RecyclerView.OnScrollListener onScrollListener3 = this.onTimeLineScrollListener;
            if (onScrollListener3 != null) {
                onScrollListener3.onScrollStateChanged(horizontalRecyclerView, 0);
            }
        }
        if (this.rtl) {
            x6 = this.lastMoveX;
            x10 = ev.getX();
        } else {
            x6 = ev.getX();
            x10 = this.lastMoveX;
        }
        float f12 = x6 - x10;
        if (this.startEdgeReached && f12 < 0.0f) {
            return true;
        }
        if (this.endEdgeReached && f12 > 0.0f) {
            return true;
        }
        this.lastMoveX = ev.getX();
        float f13 = this.initialTimeLineScrollDx;
        float f14 = f13 - f12;
        float f15 = this.scrollRangeMinDx;
        if (f14 <= f15) {
            if (f13 > f15) {
                MediaTimeLineComponent mediaTimeLineComponent2 = this.viceTimeLine;
                float timeLineScrolledDx = f15 - (mediaTimeLineComponent2 != null ? mediaTimeLineComponent2.getTimeLineScrolledDx(false) : 0);
                if (this.rtl) {
                    timeLineScrolledDx = -timeLineScrolledDx;
                }
                MediaTimeLineComponent mediaTimeLineComponent3 = this.viceTimeLine;
                if (mediaTimeLineComponent3 != null) {
                    mediaTimeLineComponent3.scrollTimeLineBy((int) timeLineScrolledDx);
                }
                this.initialTimeLineScrollDx = this.scrollRangeMinDx;
            }
            this.endEdgeReached = true;
            return true;
        }
        float f16 = f13 - f12;
        float f17 = this.scrollRangeMaxDx;
        if (f16 < f17) {
            this.initialTimeLineScrollDx = f13 - f12;
            this.startEdgeReached = false;
            this.endEdgeReached = false;
            return super.dispatchTouchEvent(ev);
        }
        if (f13 < f17) {
            MediaTimeLineComponent mediaTimeLineComponent4 = this.viceTimeLine;
            float timeLineScrolledDx2 = f17 - (mediaTimeLineComponent4 != null ? mediaTimeLineComponent4.getTimeLineScrolledDx(false) : 0);
            if (this.rtl) {
                timeLineScrolledDx2 = -timeLineScrolledDx2;
            }
            MediaTimeLineComponent mediaTimeLineComponent5 = this.viceTimeLine;
            if (mediaTimeLineComponent5 != null) {
                mediaTimeLineComponent5.scrollTimeLineBy((int) timeLineScrolledDx2);
            }
            this.initialTimeLineScrollDx = this.scrollRangeMaxDx;
        }
        this.startEdgeReached = true;
        return true;
    }

    public final void setViceTimeLineEditCallback(@Nullable final IViceTimeLineEditCallback iViceTimeLineEditCallback) {
        ViceTimeLineCutterView viceTimeLineCutterView = (ViceTimeLineCutterView) findViewById(R.id.vice_time_line_cutter);
        if (iViceTimeLineEditCallback == null) {
            viceTimeLineCutterView.setControllerCallback(null);
        } else {
            viceTimeLineCutterView.setControllerCallback(new ViceTimeLineCutterView.IViceTimeLineCutterCallback() { // from class: com.narvii.video.widget.ViceTimeLineWrapperView.setViceTimeLineEditCallback.1
                @Override // com.narvii.video.widget.ViceTimeLineCutterView.IViceTimeLineCutterCallback
                public void onCutterMoved(float f, float f6, boolean z6) {
                    ViceTimeLineWrapperView viceTimeLineWrapperView = ViceTimeLineWrapperView.this;
                    viceTimeLineWrapperView.updateContentSection(viceTimeLineWrapperView.rtl ? ViceTimeLineWrapperView.this.mainTrackStartDx - g8.c.c(f) : ViceTimeLineWrapperView.this.mainTrackStartDx + g8.c.c(f), g8.c.c(f6));
                    if (z6) {
                        return;
                    }
                    IViceTimeLineEditCallback iViceTimeLineEditCallback2 = iViceTimeLineEditCallback;
                    int iC = g8.c.c(f);
                    MediaTimeLineComponent mediaTimeLineComponent = ViceTimeLineWrapperView.this.viceTimeLine;
                    iViceTimeLineEditCallback2.onViceTimeLineEdit(iC, mediaTimeLineComponent != null ? mediaTimeLineComponent.getSectionDurationInMs(g8.c.c(f6), g8.c.c(f), false) : -1);
                }
            });
        }
    }

    public final void toggleEditMode(boolean z6) {
        ViceTimeLineCutterView viceTimeLineCutterView = (ViceTimeLineCutterView) findViewById(R.id.vice_time_line_cutter);
        this.inEditMode = z6;
        viceTimeLineCutterView.toggle(z6);
    }

    public final void bindViceTimeLine(@NotNull MediaTimeLineComponent timeLineComponent, int i10, @NotNull BaseClipInfoPack clip) {
        t.j(timeLineComponent, "timeLineComponent");
        t.j(clip, "clip");
        this.viceTimeLine = timeLineComponent;
        this.additionalFrameOffsetDx = timeLineComponent.getAdditionalFramePreOffsetDx();
        ImageView imageView = (ImageView) findViewById(R.id.track_icon);
        TextView textView = (TextView) findViewById(R.id.clip_name);
        NVImageView nVImageView = (NVImageView) findViewById(R.id.track_sticker_icon);
        ViceTimeLineCutterView viceTimeLineCutterView = (ViceTimeLineCutterView) findViewById(R.id.vice_time_line_cutter);
        switch (i10) {
            case 102:
                imageView.setVisibility(0);
                textView.setVisibility(0);
                nVImageView.setVisibility(8);
                imageView.setImageDrawable(getResources().getDrawable(R.drawable.ic_text));
                textView.setTypeface(Typeface.DEFAULT, 1);
                viceTimeLineCutterView.setFillColor(getResources().getColor(R.color.media_timeline_caption_frame_color), Color.parseColor("#222222"));
                break;
            case 103:
                imageView.setVisibility(8);
                textView.setVisibility(8);
                nVImageView.setVisibility(0);
                File file = new File(((StickerInfoPack) clip).srcImagePath);
                if (!FileUtils.isEmpty(file)) {
                    nVImageView.setImageUrl(Uri.fromFile(file).toString());
                }
                viceTimeLineCutterView.setFillColor(getResources().getColor(R.color.media_timeline_sticker_frame_color), Color.parseColor("#222222"));
                break;
            case 104:
                imageView.setVisibility(8);
                textView.setVisibility(8);
                nVImageView.setVisibility(8);
                viceTimeLineCutterView.setVisibility(8);
                break;
            default:
                imageView.setVisibility(0);
                textView.setVisibility(0);
                nVImageView.setVisibility(8);
                imageView.setImageDrawable(getResources().getDrawable(R.drawable.ic_music));
                break;
        }
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        this.onSelfClickListener = onClickListener;
    }

    public final void setTrackContent(@NotNull String title) {
        t.j(title, "title");
        ((TextView) findViewById(R.id.clip_name)).setText(title);
    }
}

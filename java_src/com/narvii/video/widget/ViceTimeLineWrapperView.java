package com.narvii.video.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.net.Uri;
import android.support.v7.widget.RecyclerView;
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
import com.narvii.mediaeditor.R;
import com.narvii.util.FileUtils;
import com.narvii.util.Utils;
import com.narvii.video.model.BaseClipInfoPack;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.widget.ViceTimeLineCutterView;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.NVImageView;
import java.io.File;
import java.util.HashMap;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* compiled from: ViceTimeLineWrapperView.kt */
/* loaded from: classes3.dex */
public final class ViceTimeLineWrapperView extends FrameLayout {
    private HashMap _$_findViewCache;
    private int additionalFrameOffsetDx;
    private long downEventTimeStamp;
    private Pair<Float, Float> downPointer;
    private boolean endEdgeReached;
    private GestureDetector gestureDetector;
    private boolean inEditMode;
    private float initialTimeLineScrollDx;
    private float lastMoveX;
    private final int mTouchSlop;
    private float mainTrackStartDx;
    private View.OnClickListener onSelfClickListener;
    private RecyclerView.OnScrollListener onTimeLineScrollListener;
    private boolean rtl;
    private float scrollRangeMaxDx;
    private float scrollRangeMinDx;
    private boolean startEdgeReached;
    private float touchAvailableMaxX;
    private float touchAvailableMinX;
    private MediaTimeLineComponent viceTimeLine;

    /* compiled from: ViceTimeLineWrapperView.kt */
    public interface IViceTimeLineEditCallback {
        void onViceTimeLineEdit(int i, int i2);
    }

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViceTimeLineWrapperView(Context context, AttributeSet attributes) {
        super(context, attributes);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributes, "attributes");
        this.rtl = Utils.isRtl();
        this.gestureDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.video.widget.ViceTimeLineWrapperView$gestureDetector$1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return true;
            }
        });
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        Intrinsics.checkExpressionValueIsNotNull(viewConfiguration, "ViewConfiguration.get(context)");
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop() * 2;
        Float fValueOf = Float.valueOf(-1.0f);
        this.downPointer = new Pair<>(fValueOf, fValueOf);
    }

    public final void bindViceTimeLine(MediaTimeLineComponent timeLineComponent, int i, BaseClipInfoPack clip) {
        Intrinsics.checkParameterIsNotNull(timeLineComponent, "timeLineComponent");
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        this.viceTimeLine = timeLineComponent;
        this.additionalFrameOffsetDx = timeLineComponent.getAdditionalFramePreOffsetDx();
        switch (i) {
            case 102:
                ImageView track_icon = (ImageView) _$_findCachedViewById(R.id.track_icon);
                Intrinsics.checkExpressionValueIsNotNull(track_icon, "track_icon");
                track_icon.setVisibility(0);
                TextView clip_name = (TextView) _$_findCachedViewById(R.id.clip_name);
                Intrinsics.checkExpressionValueIsNotNull(clip_name, "clip_name");
                clip_name.setVisibility(0);
                NVImageView track_sticker_icon = (NVImageView) _$_findCachedViewById(R.id.track_sticker_icon);
                Intrinsics.checkExpressionValueIsNotNull(track_sticker_icon, "track_sticker_icon");
                track_sticker_icon.setVisibility(8);
                ((ImageView) _$_findCachedViewById(R.id.track_icon)).setImageDrawable(getResources().getDrawable(R.drawable.ic_text));
                ((TextView) _$_findCachedViewById(R.id.clip_name)).setTypeface(Typeface.DEFAULT, 1);
                ((ViceTimeLineCutterView) _$_findCachedViewById(R.id.vice_time_line_cutter)).setFillColor(getResources().getColor(R.color.media_timeline_caption_frame_color), Color.parseColor("#222222"));
                break;
            case 103:
                ImageView track_icon2 = (ImageView) _$_findCachedViewById(R.id.track_icon);
                Intrinsics.checkExpressionValueIsNotNull(track_icon2, "track_icon");
                track_icon2.setVisibility(8);
                TextView clip_name2 = (TextView) _$_findCachedViewById(R.id.clip_name);
                Intrinsics.checkExpressionValueIsNotNull(clip_name2, "clip_name");
                clip_name2.setVisibility(8);
                NVImageView track_sticker_icon2 = (NVImageView) _$_findCachedViewById(R.id.track_sticker_icon);
                Intrinsics.checkExpressionValueIsNotNull(track_sticker_icon2, "track_sticker_icon");
                track_sticker_icon2.setVisibility(0);
                File file = new File(((StickerInfoPack) clip).srcImagePath);
                if (!FileUtils.isEmpty(file)) {
                    ((NVImageView) _$_findCachedViewById(R.id.track_sticker_icon)).setImageUrl(Uri.fromFile(file).toString());
                }
                ((ViceTimeLineCutterView) _$_findCachedViewById(R.id.vice_time_line_cutter)).setFillColor(getResources().getColor(R.color.media_timeline_sticker_frame_color), Color.parseColor("#222222"));
                break;
            case 104:
                ImageView track_icon3 = (ImageView) _$_findCachedViewById(R.id.track_icon);
                Intrinsics.checkExpressionValueIsNotNull(track_icon3, "track_icon");
                track_icon3.setVisibility(8);
                TextView clip_name3 = (TextView) _$_findCachedViewById(R.id.clip_name);
                Intrinsics.checkExpressionValueIsNotNull(clip_name3, "clip_name");
                clip_name3.setVisibility(8);
                NVImageView track_sticker_icon3 = (NVImageView) _$_findCachedViewById(R.id.track_sticker_icon);
                Intrinsics.checkExpressionValueIsNotNull(track_sticker_icon3, "track_sticker_icon");
                track_sticker_icon3.setVisibility(8);
                ViceTimeLineCutterView vice_time_line_cutter = (ViceTimeLineCutterView) _$_findCachedViewById(R.id.vice_time_line_cutter);
                Intrinsics.checkExpressionValueIsNotNull(vice_time_line_cutter, "vice_time_line_cutter");
                vice_time_line_cutter.setVisibility(8);
                break;
            default:
                ImageView track_icon4 = (ImageView) _$_findCachedViewById(R.id.track_icon);
                Intrinsics.checkExpressionValueIsNotNull(track_icon4, "track_icon");
                track_icon4.setVisibility(0);
                TextView clip_name4 = (TextView) _$_findCachedViewById(R.id.clip_name);
                Intrinsics.checkExpressionValueIsNotNull(clip_name4, "clip_name");
                clip_name4.setVisibility(0);
                NVImageView track_sticker_icon4 = (NVImageView) _$_findCachedViewById(R.id.track_sticker_icon);
                Intrinsics.checkExpressionValueIsNotNull(track_sticker_icon4, "track_sticker_icon");
                track_sticker_icon4.setVisibility(8);
                ((ImageView) _$_findCachedViewById(R.id.track_icon)).setImageDrawable(getResources().getDrawable(R.drawable.ic_music));
                break;
        }
    }

    public final void setViceTimeLineEditCallback(final IViceTimeLineEditCallback iViceTimeLineEditCallback) {
        if (iViceTimeLineEditCallback == null) {
            ((ViceTimeLineCutterView) _$_findCachedViewById(R.id.vice_time_line_cutter)).setControllerCallback(null);
        } else {
            ((ViceTimeLineCutterView) _$_findCachedViewById(R.id.vice_time_line_cutter)).setControllerCallback(new ViceTimeLineCutterView.IViceTimeLineCutterCallback() { // from class: com.narvii.video.widget.ViceTimeLineWrapperView.setViceTimeLineEditCallback.1
                @Override // com.narvii.video.widget.ViceTimeLineCutterView.IViceTimeLineCutterCallback
                public void onCutterMoved(float f, float f2, boolean z) {
                    ViceTimeLineWrapperView viceTimeLineWrapperView = ViceTimeLineWrapperView.this;
                    viceTimeLineWrapperView.updateContentSection(viceTimeLineWrapperView.rtl ? ViceTimeLineWrapperView.this.mainTrackStartDx - MathKt__MathJVMKt.roundToInt(f) : ViceTimeLineWrapperView.this.mainTrackStartDx + MathKt__MathJVMKt.roundToInt(f), MathKt__MathJVMKt.roundToInt(f2));
                    if (z) {
                        return;
                    }
                    IViceTimeLineEditCallback iViceTimeLineEditCallback2 = iViceTimeLineEditCallback;
                    int iRoundToInt = MathKt__MathJVMKt.roundToInt(f);
                    MediaTimeLineComponent mediaTimeLineComponent = ViceTimeLineWrapperView.this.viceTimeLine;
                    iViceTimeLineEditCallback2.onViceTimeLineEdit(iRoundToInt, mediaTimeLineComponent != null ? mediaTimeLineComponent.getSectionDurationInMs(MathKt__MathJVMKt.roundToInt(f2), MathKt__MathJVMKt.roundToInt(f), false) : -1);
                }
            });
        }
    }

    public final void updateScrollingRange(int i, int i2) {
        int i3 = this.additionalFrameOffsetDx;
        this.scrollRangeMinDx = i + i3;
        this.scrollRangeMaxDx = i2 + i3;
    }

    public final void addTimeLineOnScrollListener(RecyclerView.OnScrollListener listener) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        this.onTimeLineScrollListener = listener;
        MediaTimeLineComponent mediaTimeLineComponent = this.viceTimeLine;
        if (mediaTimeLineComponent != null) {
            mediaTimeLineComponent.addTimeLineOnScrollListener(listener);
        }
    }

    public final void setTrackContent(String title) {
        Intrinsics.checkParameterIsNotNull(title, "title");
        TextView clip_name = (TextView) _$_findCachedViewById(R.id.clip_name);
        Intrinsics.checkExpressionValueIsNotNull(clip_name, "clip_name");
        clip_name.setText(title);
    }

    public final void updateVisibleContentSection(float f, int i, int i2, int i3, float f2, float f3, boolean z) {
        float f4;
        int iRoundToInt;
        RectF currentTimelineRect = ((ViceTimeLineCutterView) _$_findCachedViewById(R.id.vice_time_line_cutter)).getCurrentTimelineRect();
        if (z) {
            f4 = this.rtl ? currentTimelineRect.right : currentTimelineRect.left;
        } else {
            f4 = f;
        }
        if (z) {
            System.out.println("testtest cutter width = " + MathKt__MathJVMKt.roundToInt(currentTimelineRect.width()) + " sectionWidth = " + i);
            iRoundToInt = MathKt__MathJVMKt.roundToInt(currentTimelineRect.width());
        } else {
            iRoundToInt = i;
        }
        this.touchAvailableMinX = this.rtl ? f4 - iRoundToInt : f4;
        this.touchAvailableMaxX = this.rtl ? f4 : iRoundToInt + f4;
        this.mainTrackStartDx = f2;
        updateContentSection(f4, iRoundToInt);
        float f5 = f4 - (this.rtl ? iRoundToInt : 0);
        ((ViceTimeLineCutterView) _$_findCachedViewById(R.id.vice_time_line_cutter)).layoutRect(f5, getTop(), f5 + iRoundToInt, getBottom(), i2, i3, f2, f3);
    }

    public final void toggleEditMode(boolean z) {
        this.inEditMode = z;
        ((ViceTimeLineCutterView) _$_findCachedViewById(R.id.vice_time_line_cutter)).toggle(z);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        this.onSelfClickListener = onClickListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateContentSection(float f, int i) {
        float width = f - (this.rtl ? getWidth() : 0);
        LinearLayout track_content_panel = (LinearLayout) _$_findCachedViewById(R.id.track_content_panel);
        Intrinsics.checkExpressionValueIsNotNull(track_content_panel, "track_content_panel");
        ViewGroup.LayoutParams layoutParams = track_content_panel.getLayoutParams();
        if (i != layoutParams.width) {
            TextView clip_name = (TextView) _$_findCachedViewById(R.id.clip_name);
            Intrinsics.checkExpressionValueIsNotNull(clip_name, "clip_name");
            CharSequence text = clip_name.getText();
            TextView clip_name2 = (TextView) _$_findCachedViewById(R.id.clip_name);
            Intrinsics.checkExpressionValueIsNotNull(clip_name2, "clip_name");
            clip_name2.setText("");
            layoutParams.width = i;
            LinearLayout track_content_panel2 = (LinearLayout) _$_findCachedViewById(R.id.track_content_panel);
            Intrinsics.checkExpressionValueIsNotNull(track_content_panel2, "track_content_panel");
            track_content_panel2.setLayoutParams(layoutParams);
            TextView clip_name3 = (TextView) _$_findCachedViewById(R.id.clip_name);
            Intrinsics.checkExpressionValueIsNotNull(clip_name3, "clip_name");
            clip_name3.setText(text);
        }
        LinearLayout track_content_panel3 = (LinearLayout) _$_findCachedViewById(R.id.track_content_panel);
        Intrinsics.checkExpressionValueIsNotNull(track_content_panel3, "track_content_panel");
        track_content_panel3.setTranslationX(width);
    }

    public final int getMTouchSlop() {
        return this.mTouchSlop;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        View.OnClickListener onClickListener;
        float x;
        float x2;
        Intrinsics.checkParameterIsNotNull(ev, "ev");
        boolean z = false;
        if (this.gestureDetector.onTouchEvent(ev)) {
            RecyclerView.OnScrollListener onScrollListener = this.onTimeLineScrollListener;
            if (onScrollListener != null) {
                onScrollListener.onScrollStateChanged((HorizontalRecyclerView) _$_findCachedViewById(R.id.audio_time_line), 0);
            }
            ((ViceTimeLineCutterView) _$_findCachedViewById(R.id.vice_time_line_cutter)).onActionUpInterceptedForFling(ev);
            return true;
        }
        if (ev.getAction() == 0) {
            this.downEventTimeStamp = System.currentTimeMillis();
            this.downPointer = new Pair<>(Float.valueOf(ev.getX()), Float.valueOf(ev.getY()));
        } else if (ev.getAction() == 1) {
            float fAbs = Math.abs(this.downPointer.getFirst().floatValue() - ev.getX()) + Math.abs(this.downPointer.getSecond().floatValue() - ev.getY());
            long jCurrentTimeMillis = System.currentTimeMillis() - this.downEventTimeStamp;
            float f = this.touchAvailableMinX;
            float f2 = this.touchAvailableMaxX;
            float fFloatValue = this.downPointer.getFirst().floatValue();
            if (fFloatValue >= f && fFloatValue <= f2 && fAbs <= this.mTouchSlop && jCurrentTimeMillis <= 1000 && (onClickListener = this.onSelfClickListener) != null) {
                onClickListener.onClick(this);
            }
        }
        if (this.inEditMode) {
            return super.dispatchTouchEvent(ev);
        }
        float f3 = this.touchAvailableMinX;
        int i = this.mTouchSlop;
        float f4 = f3 - i;
        float f5 = this.touchAvailableMaxX + i;
        float x3 = ev.getX();
        if (x3 < f4 || x3 > f5) {
            if (ev.getAction() == 1 || ev.getAction() == 3) {
                this.startEdgeReached = false;
                this.endEdgeReached = false;
                RecyclerView.OnScrollListener onScrollListener2 = this.onTimeLineScrollListener;
                if (onScrollListener2 != null) {
                    onScrollListener2.onScrollStateChanged((HorizontalRecyclerView) _$_findCachedViewById(R.id.audio_time_line), 0);
                }
            }
            return true;
        }
        if (ev.getAction() == 0) {
            this.startEdgeReached = false;
            this.endEdgeReached = false;
            this.lastMoveX = ev.getX();
            this.initialTimeLineScrollDx = this.viceTimeLine != null ? r0.getTimeLineScrolledDx(false) : 0;
            super.dispatchTouchEvent(ev);
        } else if (ev.getAction() == 1 || ev.getAction() == 3) {
            this.startEdgeReached = false;
            this.endEdgeReached = false;
            RecyclerView.OnScrollListener onScrollListener3 = this.onTimeLineScrollListener;
            if (onScrollListener3 != null) {
                onScrollListener3.onScrollStateChanged((HorizontalRecyclerView) _$_findCachedViewById(R.id.audio_time_line), 0);
            }
        }
        if (this.rtl) {
            x = this.lastMoveX;
            x2 = ev.getX();
        } else {
            x = ev.getX();
            x2 = this.lastMoveX;
        }
        float f6 = x - x2;
        if (this.startEdgeReached && f6 < 0) {
            return true;
        }
        if (this.endEdgeReached && f6 > 0) {
            return true;
        }
        this.lastMoveX = ev.getX();
        float f7 = this.initialTimeLineScrollDx;
        float f8 = f7 - f6;
        float f9 = this.scrollRangeMinDx;
        if (f8 <= f9) {
            if (f7 > f9) {
                float timeLineScrolledDx = f9 - (this.viceTimeLine != null ? r0.getTimeLineScrolledDx(false) : 0);
                if (this.rtl) {
                    timeLineScrolledDx = -timeLineScrolledDx;
                }
                MediaTimeLineComponent mediaTimeLineComponent = this.viceTimeLine;
                if (mediaTimeLineComponent != null) {
                    mediaTimeLineComponent.scrollTimeLineBy((int) timeLineScrolledDx);
                }
                this.initialTimeLineScrollDx = this.scrollRangeMinDx;
            }
            this.endEdgeReached = true;
        } else {
            float f10 = f7 - f6;
            float f11 = this.scrollRangeMaxDx;
            if (f10 >= f11) {
                if (f7 < f11) {
                    float timeLineScrolledDx2 = f11 - (this.viceTimeLine != null ? r0.getTimeLineScrolledDx(false) : 0);
                    if (this.rtl) {
                        timeLineScrolledDx2 = -timeLineScrolledDx2;
                    }
                    MediaTimeLineComponent mediaTimeLineComponent2 = this.viceTimeLine;
                    if (mediaTimeLineComponent2 != null) {
                        mediaTimeLineComponent2.scrollTimeLineBy((int) timeLineScrolledDx2);
                    }
                    this.initialTimeLineScrollDx = this.scrollRangeMaxDx;
                }
                this.startEdgeReached = true;
            } else {
                this.initialTimeLineScrollDx = f7 - f6;
                this.startEdgeReached = false;
                this.endEdgeReached = false;
                z = true;
            }
        }
        if (z) {
            return super.dispatchTouchEvent(ev);
        }
        return true;
    }
}

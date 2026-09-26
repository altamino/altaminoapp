package com.narvii.nvplayerview;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.model.DebugInfo;
import com.narvii.util.JacksonUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class NVVideoDebugView extends LinearLayout {
    private static final String TAG = "NVVideoDebugView";
    public static final String VIDEO_DEBUG_PREFS = "VideoDebug";
    public static final String VIDEO_STRATEGY_INFO = "VideoStrategyInfo";
    private static boolean checkStrategyInfo;
    public static boolean showStrategyInfo;
    private Context mContext;
    private TextView mErrorText;
    private TextView mFromSettingToFirstFrameText;
    private TextView mHitCacheText;
    private TextView mPlayerStatus;
    private TextView mPreloadText;
    private TextView mResolutionText;
    private TextView mStrategyInfoText;
    private TextView mSupportLowResText;

    public NVVideoDebugView(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public void setPlayerStatus(int i10) {
        if (i10 == 1) {
            this.mPlayerStatus.setText("status: idle");
            return;
        }
        if (i10 == 2) {
            this.mPlayerStatus.setText("status: buffering");
        } else if (i10 == 3) {
            this.mPlayerStatus.setText("status: ready");
        } else if (i10 == 4) {
            this.mPlayerStatus.setText("status: end");
        }
    }

    public NVVideoDebugView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    private void init() {
        if (!checkStrategyInfo) {
            checkStrategyInfo = true;
            showStrategyInfo = ((SharedPreferences) com.narvii.util.Utils.getNVContext(getContext()).getService(IncubatorApplication.PREFS_SERVICE_KEY)).getBoolean(VIDEO_STRATEGY_INFO, false);
        }
        TextView textViewPrepareTextView = prepareTextView();
        this.mHitCacheText = textViewPrepareTextView;
        textViewPrepareTextView.setText("exo hit cache: false");
        TextView textViewPrepareTextView2 = prepareTextView();
        this.mFromSettingToFirstFrameText = textViewPrepareTextView2;
        textViewPrepareTextView2.setText("first-frame: 0ms");
        TextView textViewPrepareTextView3 = prepareTextView();
        this.mPlayerStatus = textViewPrepareTextView3;
        textViewPrepareTextView3.setText("status: idle");
        TextView textViewPrepareTextView4 = prepareTextView();
        this.mSupportLowResText = textViewPrepareTextView4;
        textViewPrepareTextView4.setText("video support 360p: false");
        TextView textViewPrepareTextView5 = prepareTextView();
        this.mResolutionText = textViewPrepareTextView5;
        textViewPrepareTextView5.setText("dim: 0x0");
        TextView textViewPrepareTextView6 = prepareTextView();
        this.mPreloadText = textViewPrepareTextView6;
        textViewPrepareTextView6.setText("0kbps");
        TextView textViewPrepareTextView7 = prepareTextView();
        this.mStrategyInfoText = textViewPrepareTextView7;
        textViewPrepareTextView7.setText(new DebugInfo().toStringList());
        TextView textViewPrepareTextView8 = prepareTextView();
        this.mErrorText = textViewPrepareTextView8;
        textViewPrepareTextView8.setText("");
        if (showStrategyInfo) {
            this.mHitCacheText.setVisibility(8);
            this.mFromSettingToFirstFrameText.setVisibility(8);
            this.mPlayerStatus.setVisibility(8);
            this.mSupportLowResText.setVisibility(8);
            this.mResolutionText.setVisibility(8);
            this.mPreloadText.setVisibility(8);
            this.mErrorText.setVisibility(8);
            this.mStrategyInfoText.setVisibility(0);
            return;
        }
        this.mHitCacheText.setVisibility(0);
        this.mFromSettingToFirstFrameText.setVisibility(0);
        this.mPlayerStatus.setVisibility(0);
        this.mSupportLowResText.setVisibility(0);
        this.mResolutionText.setVisibility(0);
        this.mPreloadText.setVisibility(0);
        this.mErrorText.setVisibility(0);
        this.mStrategyInfoText.setVisibility(8);
    }

    private TextView prepareTextView() {
        TextView textView = new TextView(this.mContext);
        textView.setTextSize(12.0f);
        textView.setAllCaps(false);
        textView.setTextColor(-1);
        addView(textView, new LinearLayout.LayoutParams(-2, -2));
        return textView;
    }

    public void reset() {
        setHitCacheText("false");
        setResolutionText(0, 0);
        setFromSettingToFirstFrameText(0L);
        setPlayerStatus(1);
        setSupportLowResText(false);
        setStrategyInfoText(null);
        setErrorText("");
    }

    public void setErrorText(String str) {
        this.mErrorText.setText(str);
    }

    public void setFromSettingToFirstFrameText(long j6) {
        this.mFromSettingToFirstFrameText.setText("first-frame: " + j6 + "ms");
    }

    public void setHitCacheText(String str) {
        this.mHitCacheText.setText("exo hit cache: " + str);
    }

    public void setPreloadText(String str) {
        this.mPreloadText.setText(str);
    }

    public void setResolutionText(int i10, int i11) {
        this.mResolutionText.setText("dim: " + i10 + "x" + i11);
    }

    public void setStrategyInfoText(ObjectNode objectNode) {
        if (this.mStrategyInfoText.getVisibility() != 0) {
            return;
        }
        if (objectNode == null) {
            this.mStrategyInfoText.setText(new DebugInfo().toStringList());
            return;
        }
        StringBuilder sb = new StringBuilder();
        try {
            Map map = (Map) JacksonUtils.DEFAULT_MAPPER.convertValue(objectNode, new TypeReference<Map<String, Object>>() { // from class: com.narvii.nvplayerview.NVVideoDebugView.1
            });
            if (map != null) {
                sb.append("\n");
                for (String str : map.keySet()) {
                    sb.append(str);
                    sb.append(":");
                    if (map.get(str) != null) {
                        sb.append(map.get(str).toString());
                    }
                    sb.append("\n");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.mStrategyInfoText.setText(sb.toString());
    }

    public void setSupportLowResText(boolean z6) {
        this.mSupportLowResText.setText("video support 360p: " + z6);
    }

    public NVVideoDebugView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mContext = context;
        setBackgroundColor(1145324612);
        setOrientation(1);
        init();
    }
}

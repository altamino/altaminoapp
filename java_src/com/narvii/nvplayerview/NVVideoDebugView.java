package com.narvii.nvplayerview;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.model.DebugInfo;
import com.narvii.util.JacksonUtils;
import java.util.Map;

/* loaded from: classes3.dex */
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

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public NVVideoDebugView(Context context) {
        this(context, null);
    }

    public NVVideoDebugView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public NVVideoDebugView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mContext = context;
        setBackgroundColor(1145324612);
        setOrientation(1);
        init();
    }

    private void init() {
        if (!checkStrategyInfo) {
            checkStrategyInfo = true;
            showStrategyInfo = ((SharedPreferences) com.narvii.util.Utils.getNVContext(getContext()).getService("prefs")).getBoolean(VIDEO_STRATEGY_INFO, false);
        }
        this.mHitCacheText = prepareTextView();
        this.mHitCacheText.setText("exo hit cache: false");
        this.mFromSettingToFirstFrameText = prepareTextView();
        this.mFromSettingToFirstFrameText.setText("first-frame: 0ms");
        this.mPlayerStatus = prepareTextView();
        this.mPlayerStatus.setText("status: idle");
        this.mSupportLowResText = prepareTextView();
        this.mSupportLowResText.setText("video support 360p: false");
        this.mResolutionText = prepareTextView();
        this.mResolutionText.setText("dim: 0x0");
        this.mPreloadText = prepareTextView();
        this.mPreloadText.setText("0kbps");
        this.mStrategyInfoText = prepareTextView();
        this.mStrategyInfoText.setText(new DebugInfo().toStringList());
        this.mErrorText = prepareTextView();
        this.mErrorText.setText("");
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

    public void reset() {
        setHitCacheText("false");
        setResolutionText(0, 0);
        setFromSettingToFirstFrameText(0L);
        setPlayerStatus(1);
        setSupportLowResText(false);
        setStrategyInfoText(null);
        setErrorText("");
    }

    public void setHitCacheText(String str) {
        this.mHitCacheText.setText("exo hit cache: " + str);
    }

    public void setResolutionText(int i, int i2) {
        this.mResolutionText.setText("dim: " + i + "x" + i2);
    }

    public void setFromSettingToFirstFrameText(long j) {
        this.mFromSettingToFirstFrameText.setText("first-frame: " + j + "ms");
    }

    public void setPlayerStatus(int i) {
        if (i == 1) {
            this.mPlayerStatus.setText("status: idle");
            return;
        }
        if (i == 2) {
            this.mPlayerStatus.setText("status: buffering");
        } else if (i == 3) {
            this.mPlayerStatus.setText("status: ready");
        } else if (i == 4) {
            this.mPlayerStatus.setText("status: end");
        }
    }

    public void setPreloadText(String str) {
        this.mPreloadText.setText(str);
    }

    public void setSupportLowResText(boolean z) {
        this.mSupportLowResText.setText("video support 360p: " + z);
    }

    public void setErrorText(String str) {
        this.mErrorText.setText(str);
    }

    public void setStrategyInfoText(ObjectNode objectNode) {
        if (this.mStrategyInfoText.getVisibility() != 0) {
            return;
        }
        if (objectNode != null) {
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
            return;
        }
        this.mStrategyInfoText.setText(new DebugInfo().toStringList());
    }

    private TextView prepareTextView() {
        TextView textView = new TextView(this.mContext);
        textView.setTextSize(12.0f);
        textView.setAllCaps(false);
        textView.setTextColor(-1);
        addView(textView, new LinearLayout.LayoutParams(-2, -2));
        return textView;
    }
}

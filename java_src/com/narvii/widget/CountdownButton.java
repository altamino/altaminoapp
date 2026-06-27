package com.narvii.widget;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.AttributeSet;
import android.widget.Button;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class CountdownButton extends Button implements SharedPreferences.OnSharedPreferenceChangeListener, Runnable {
    SharedPreferences prefs;
    String prefsKey;
    String text;

    public CountdownButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void init(String str, SharedPreferences sharedPreferences, String str2) {
        this.text = str;
        this.prefs = sharedPreferences;
        this.prefsKey = str2;
        update();
    }

    public void recordTime() {
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences == null || this.prefsKey == null) {
            return;
        }
        sharedPreferences.edit().putLong(this.prefsKey, System.currentTimeMillis()).apply();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.prefsKey != null) {
            this.prefs.registerOnSharedPreferenceChangeListener(this);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences != null) {
            sharedPreferences.unregisterOnSharedPreferenceChangeListener(this);
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (Utils.isEquals(str, this.prefsKey)) {
            update();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        update();
    }

    void update() {
        String str = this.text;
        if (str != null) {
            if (this.prefs != null && this.prefsKey != null) {
                Utils.handler.removeCallbacks(this);
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j = this.prefs.getLong(this.prefsKey, 0L);
                if (jCurrentTimeMillis > j && jCurrentTimeMillis < DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS + j) {
                    str = str + " (" + (60 - (((jCurrentTimeMillis - j) + 999) / 1000)) + ") ";
                    Utils.postDelayed(this, 1000L);
                    setEnabled(false);
                } else {
                    setEnabled(true);
                }
            }
            setText(str);
        }
    }
}

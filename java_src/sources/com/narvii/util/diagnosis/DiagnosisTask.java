package com.narvii.util.diagnosis;

import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import androidx.work.WorkRequest;
import com.narvii.app.NVContext;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes9.dex */
abstract class DiagnosisTask implements Runnable {
    NVContext context;
    long endTime;
    Object error;
    String name;
    Boolean result;
    long startTime;

    void destory() {
    }

    void appendTo(SpannableStringBuilder spannableStringBuilder) {
        spannableStringBuilder.append((CharSequence) this.name);
        spannableStringBuilder.append(": ");
        for (int length = this.name.length() + 2; length < 26; length++) {
            spannableStringBuilder.append(' ');
        }
        if (this.result == null) {
            long jNow = now() - this.startTime;
            spannableStringBuilder.append(b.BEGIN_LIST).append("-\\|/".charAt(((int) (jNow / 250)) % 4)).append(b.END_LIST);
            if (jNow > WorkRequest.MIN_BACKOFF_MILLIS) {
                spannableStringBuilder.append(" (").append((CharSequence) String.valueOf(jNow / 1000)).append('.').append((CharSequence) String.valueOf((jNow / 100) % 10)).append(')');
            }
        } else {
            if (this.endTime == 0) {
                this.endTime = now();
            }
            int length2 = spannableStringBuilder.length();
            if (this.result == Boolean.FALSE) {
                spannableStringBuilder.append("[FAIL]");
                spannableStringBuilder.setSpan(new BackgroundColorSpan(-53694), length2, spannableStringBuilder.length(), 0);
            } else {
                spannableStringBuilder.append("[OK]");
                spannableStringBuilder.setSpan(new BackgroundColorSpan(-13107420), length2, spannableStringBuilder.length(), 0);
            }
        }
        spannableStringBuilder.append('\n');
        if (this.error != null) {
            spannableStringBuilder.append("    ").append((CharSequence) String.valueOf(this.error)).append('\n');
        }
    }

    DiagnosisTask(NVContext nVContext, String str) {
        this.context = nVContext;
        this.name = str;
    }

    static long now() {
        return SystemClock.elapsedRealtime();
    }

    void start() {
        this.startTime = now();
        this.endTime = 0L;
        this.result = null;
        this.error = null;
        run();
    }
}

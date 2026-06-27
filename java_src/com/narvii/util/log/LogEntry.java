package com.narvii.util.log;

import com.narvii.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;

/* loaded from: classes3.dex */
public class LogEntry {
    public Throwable error;
    public int level;
    public String message;
    public String tag;
    public long time;

    public void reset() {
        this.level = 0;
        this.tag = null;
        this.message = null;
        this.error = null;
    }

    public void appendTo(StringBuilder sb) {
        sb.append(this.time);
        int i = this.level;
        if (i == 2) {
            sb.append('V');
        } else if (i == 3) {
            sb.append('D');
        } else if (i == 4) {
            sb.append('I');
        } else if (i == 5) {
            sb.append('W');
        } else if (i == 6) {
            sb.append('E');
        } else {
            sb.append('?');
        }
        String str = this.tag;
        if (str != null && !Log.TAG.equals(str)) {
            sb.append('(');
            sb.append(this.tag);
            sb.append(')');
        }
        sb.append(':');
        sb.append(this.message);
        sb.append('\n');
        if (this.error != null) {
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            this.error.printStackTrace(printWriter);
            printWriter.flush();
            printWriter.close();
            sb.append(stringWriter);
            sb.append('\n');
        }
    }
}

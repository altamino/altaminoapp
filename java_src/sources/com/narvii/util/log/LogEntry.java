package com.narvii.util.log;

import com.narvii.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes6.dex */
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
        int i10 = this.level;
        if (i10 == 2) {
            sb.append('V');
        } else if (i10 == 3) {
            sb.append('D');
        } else if (i10 == 4) {
            sb.append('I');
        } else if (i10 == 5) {
            sb.append('W');
        } else if (i10 != 6) {
            sb.append('?');
        } else {
            sb.append('E');
        }
        String str = this.tag;
        if (str != null && !Log.TAG.equals(str)) {
            sb.append('(');
            sb.append(this.tag);
            sb.append(')');
        }
        sb.append(b.COLON);
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

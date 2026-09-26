package androidx.constraintlayout.core.parser;

/* JADX INFO: loaded from: classes8.dex */
public class CLElement {
    protected static int BASE_INDENT = 2;
    protected static int MAX_LINE = 80;
    private int line;
    protected CLContainer mContainer;
    private final char[] mContent;
    protected long start = -1;
    protected long end = Long.MAX_VALUE;

    public int c() {
        return this.line;
    }

    public String toString() {
        long j6 = this.start;
        long j10 = this.end;
        if (j6 > j10 || j10 == Long.MAX_VALUE) {
            return getClass() + " (INVALID, " + this.start + "-" + this.end + ")";
        }
        return d() + " (" + this.start + " : " + this.end + ") <<" + new String(this.mContent).substring((int) this.start, ((int) this.end) + 1) + ">>";
    }

    public CLElement(char[] cArr) {
        this.mContent = cArr;
    }

    protected String d() {
        String string = getClass().toString();
        return string.substring(string.lastIndexOf(46) + 1);
    }
}

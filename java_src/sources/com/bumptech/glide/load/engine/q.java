package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class q extends Exception {
    private static final StackTraceElement[] EMPTY_ELEMENTS = new StackTraceElement[0];
    private static final long serialVersionUID = 1;
    private final List<Throwable> causes;
    private Class<?> dataClass;
    private com.bumptech.glide.load.a dataSource;
    private String detailMessage;

    @Nullable
    private Exception exception;
    private com.bumptech.glide.load.g key;

    public q(String str) {
        this(str, (List<Throwable>) Collections.emptyList());
    }

    public List<Throwable> e() {
        return this.causes;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }

    void i(com.bumptech.glide.load.g gVar, com.bumptech.glide.load.a aVar) {
        j(gVar, aVar, null);
    }

    void j(com.bumptech.glide.load.g gVar, com.bumptech.glide.load.a aVar, Class<?> cls) {
        this.key = gVar;
        this.dataSource = aVar;
        this.dataClass = cls;
    }

    public void k(@Nullable Exception exc) {
        this.exception = exc;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    private static final class a implements Appendable {
        private static final String EMPTY_SEQUENCE = "";
        private static final String INDENT = "  ";
        private final Appendable appendable;
        private boolean printedNewLine = true;

        @NonNull
        private CharSequence a(@Nullable CharSequence charSequence) {
            return charSequence == null ? "" : charSequence;
        }

        @Override // java.lang.Appendable
        public Appendable append(char c7) throws IOException {
            if (this.printedNewLine) {
                this.printedNewLine = false;
                this.appendable.append(INDENT);
            }
            this.printedNewLine = c7 == '\n';
            this.appendable.append(c7);
            return this;
        }

        a(Appendable appendable) {
            this.appendable = appendable;
        }

        @Override // java.lang.Appendable
        public Appendable append(@Nullable CharSequence charSequence) throws IOException {
            CharSequence charSequenceA = a(charSequence);
            return append(charSequenceA, 0, charSequenceA.length());
        }

        @Override // java.lang.Appendable
        public Appendable append(@Nullable CharSequence charSequence, int i10, int i11) throws IOException {
            CharSequence charSequenceA = a(charSequence);
            boolean z6 = false;
            if (this.printedNewLine) {
                this.printedNewLine = false;
                this.appendable.append(INDENT);
            }
            if (charSequenceA.length() > 0 && charSequenceA.charAt(i11 - 1) == '\n') {
                z6 = true;
            }
            this.printedNewLine = z6;
            this.appendable.append(charSequenceA, i10, i11);
            return this;
        }
    }

    public q(String str, Throwable th) {
        this(str, (List<Throwable>) Collections.singletonList(th));
    }

    private void a(Throwable th, List<Throwable> list) {
        if (!(th instanceof q)) {
            list.add(th);
            return;
        }
        Iterator<Throwable> it = ((q) th).e().iterator();
        while (it.hasNext()) {
            a(it.next(), list);
        }
    }

    public List<Throwable> f() {
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        return arrayList;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.detailMessage);
        sb.append(this.dataClass != null ? ", " + this.dataClass : "");
        sb.append(this.dataSource != null ? ", " + this.dataSource : "");
        sb.append(this.key != null ? ", " + this.key : "");
        List<Throwable> listF = f();
        if (listF.isEmpty()) {
            return sb.toString();
        }
        if (listF.size() == 1) {
            sb.append("\nThere was 1 cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(listF.size());
            sb.append(" causes:");
        }
        for (Throwable th : listF) {
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        h(printStream);
    }

    public q(String str, List<Throwable> list) {
        this.detailMessage = str;
        setStackTrace(EMPTY_ELEMENTS);
        this.causes = list;
    }

    private static void b(List<Throwable> list, Appendable appendable) {
        try {
            c(list, appendable);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static void c(List<Throwable> list, Appendable appendable) throws IOException {
        int size = list.size();
        int i10 = 0;
        while (i10 < size) {
            int i11 = i10 + 1;
            appendable.append("Cause (").append(String.valueOf(i11)).append(" of ").append(String.valueOf(size)).append("): ");
            Throwable th = list.get(i10);
            if (th instanceof q) {
                ((q) th).h(appendable);
            } else {
                d(th, appendable);
            }
            i10 = i11;
        }
    }

    private static void d(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    private void h(Appendable appendable) {
        d(this, appendable);
        b(e(), new a(appendable));
    }

    public void g(String str) {
        List<Throwable> listF = f();
        int size = listF.size();
        int i10 = 0;
        while (i10 < size) {
            StringBuilder sb = new StringBuilder();
            sb.append("Root cause (");
            int i11 = i10 + 1;
            sb.append(i11);
            sb.append(" of ");
            sb.append(size);
            sb.append(")");
            Log.i(str, sb.toString(), listF.get(i10));
            i10 = i11;
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        h(printWriter);
    }
}

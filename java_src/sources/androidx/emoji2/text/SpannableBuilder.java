package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
@RestrictTo
public final class SpannableBuilder extends SpannableStringBuilder {

    @NonNull
    private final Class<?> mWatcherClass;

    @NonNull
    private final List<WatcherWrapper> mWatchers;

    private static class WatcherWrapper implements TextWatcher, SpanWatcher {
        private final AtomicInteger mBlockCalls = new AtomicInteger(0);
        final Object mObject;

        private boolean b(Object obj) {
            return obj instanceof EmojiSpan;
        }

        final void a() {
            this.mBlockCalls.incrementAndGet();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            ((TextWatcher) this.mObject).afterTextChanged(editable);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            ((TextWatcher) this.mObject).beforeTextChanged(charSequence, i10, i11, i12);
        }

        final void c() {
            this.mBlockCalls.decrementAndGet();
        }

        @Override // android.text.SpanWatcher
        public void onSpanAdded(Spannable spannable, Object obj, int i10, int i11) {
            if (this.mBlockCalls.get() <= 0 || !b(obj)) {
                ((SpanWatcher) this.mObject).onSpanAdded(spannable, obj, i10, i11);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanChanged(Spannable spannable, Object obj, int i10, int i11, int i12, int i13) {
            if (this.mBlockCalls.get() <= 0 || !b(obj)) {
                ((SpanWatcher) this.mObject).onSpanChanged(spannable, obj, i10, i11, i12, i13);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanRemoved(Spannable spannable, Object obj, int i10, int i11) {
            if (this.mBlockCalls.get() <= 0 || !b(obj)) {
                ((SpanWatcher) this.mObject).onSpanRemoved(spannable, obj, i10, i11);
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            ((TextWatcher) this.mObject).onTextChanged(charSequence, i10, i11, i12);
        }

        WatcherWrapper(Object obj) {
            this.mObject = obj;
        }
    }

    @RestrictTo
    SpannableBuilder(@NonNull Class<?> cls, @NonNull CharSequence charSequence) {
        super(charSequence);
        this.mWatchers = new ArrayList();
        Preconditions.j(cls, "watcherClass cannot be null");
        this.mWatcherClass = cls;
    }

    private void b() {
        for (int i10 = 0; i10 < this.mWatchers.size(); i10++) {
            this.mWatchers.get(i10).a();
        }
    }

    private void e() {
        for (int i10 = 0; i10 < this.mWatchers.size(); i10++) {
            this.mWatchers.get(i10).onTextChanged(this, 0, length(), length());
        }
    }

    private WatcherWrapper f(Object obj) {
        for (int i10 = 0; i10 < this.mWatchers.size(); i10++) {
            WatcherWrapper watcherWrapper = this.mWatchers.get(i10);
            if (watcherWrapper.mObject == obj) {
                return watcherWrapper;
            }
        }
        return null;
    }

    private boolean g(@NonNull Class<?> cls) {
        return this.mWatcherClass == cls;
    }

    private void i() {
        for (int i10 = 0; i10 < this.mWatchers.size(); i10++) {
            this.mWatchers.get(i10).c();
        }
    }

    @NonNull
    @RestrictTo
    public static SpannableBuilder c(@NonNull Class<?> cls, @NonNull CharSequence charSequence) {
        return new SpannableBuilder(cls, charSequence);
    }

    private boolean h(@Nullable Object obj) {
        return obj != null && g(obj.getClass());
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder delete(int i10, int i11) {
        super.delete(i10, i11);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int nextSpanTransition(int i10, int i11, @Nullable Class cls) {
        if (cls == null || g(cls)) {
            cls = WatcherWrapper.class;
        }
        return super.nextSpanTransition(i10, i11, cls);
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    @SuppressLint({"UnknownNullness"})
    public CharSequence subSequence(int i10, int i11) {
        return new SpannableBuilder(this.mWatcherClass, this, i10, i11);
    }

    @RestrictTo
    public void a() {
        b();
    }

    @RestrictTo
    public void d() {
        i();
        e();
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanEnd(@Nullable Object obj) {
        WatcherWrapper watcherWrapperF;
        if (h(obj) && (watcherWrapperF = f(obj)) != null) {
            obj = watcherWrapperF;
        }
        return super.getSpanEnd(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanFlags(@Nullable Object obj) {
        WatcherWrapper watcherWrapperF;
        if (h(obj) && (watcherWrapperF = f(obj)) != null) {
            obj = watcherWrapperF;
        }
        return super.getSpanFlags(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanStart(@Nullable Object obj) {
        WatcherWrapper watcherWrapperF;
        if (h(obj) && (watcherWrapperF = f(obj)) != null) {
            obj = watcherWrapperF;
        }
        return super.getSpanStart(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    @SuppressLint({"UnknownNullness"})
    public <T> T[] getSpans(int i10, int i11, @NonNull Class<T> cls) {
        if (g(cls)) {
            WatcherWrapper[] watcherWrapperArr = (WatcherWrapper[]) super.getSpans(i10, i11, WatcherWrapper.class);
            T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, watcherWrapperArr.length));
            for (int i12 = 0; i12 < watcherWrapperArr.length; i12++) {
                tArr[i12] = watcherWrapperArr[i12].mObject;
            }
            return tArr;
        }
        return (T[]) super.getSpans(i10, i11, cls);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder insert(int i10, CharSequence charSequence) {
        super.insert(i10, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void removeSpan(@Nullable Object obj) {
        WatcherWrapper watcherWrapperF;
        if (h(obj)) {
            watcherWrapperF = f(obj);
            if (watcherWrapperF != null) {
                obj = watcherWrapperF;
            }
        } else {
            watcherWrapperF = null;
        }
        super.removeSpan(obj);
        if (watcherWrapperF != null) {
            this.mWatchers.remove(watcherWrapperF);
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder replace(int i10, int i11, CharSequence charSequence) {
        b();
        super.replace(i10, i11, charSequence);
        i();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void setSpan(@Nullable Object obj, int i10, int i11, int i12) {
        if (h(obj)) {
            WatcherWrapper watcherWrapper = new WatcherWrapper(obj);
            this.mWatchers.add(watcherWrapper);
            obj = watcherWrapper;
        }
        super.setSpan(obj, i10, i11, i12);
    }

    @RestrictTo
    SpannableBuilder(@NonNull Class<?> cls, @NonNull CharSequence charSequence, int i10, int i11) {
        super(charSequence, i10, i11);
        this.mWatchers = new ArrayList();
        Preconditions.j(cls, "watcherClass cannot be null");
        this.mWatcherClass = cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder insert(int i10, CharSequence charSequence, int i11, int i12) {
        super.insert(i10, charSequence, i11, i12);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder replace(int i10, int i11, CharSequence charSequence, int i12, int i13) {
        b();
        super.replace(i10, i11, charSequence, i12, i13);
        i();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    @NonNull
    public SpannableStringBuilder append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    @NonNull
    public SpannableStringBuilder append(char c7) {
        super.append(c7);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    @NonNull
    public SpannableStringBuilder append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i10, int i11) {
        super.append(charSequence, i10, i11);
        return this;
    }

    @Override // android.text.SpannableStringBuilder
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder append(CharSequence charSequence, Object obj, int i10) {
        super.append(charSequence, obj, i10);
        return this;
    }
}

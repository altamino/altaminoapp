package androidx.databinding.adapters;

import androidx.annotation.RestrictTo;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
@RestrictTo
public class TableLayoutBindingAdapter {
    private static final int MAX_COLUMNS = 20;
    private static Pattern sColumnPattern = Pattern.compile("\\s*,\\s*");
}

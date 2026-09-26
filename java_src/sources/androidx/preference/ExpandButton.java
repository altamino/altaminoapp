package androidx.preference;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
final class ExpandButton extends Preference {
    private long mId;

    @Override // androidx.preference.Preference
    long o() {
        return this.mId;
    }

    private void y0() {
        k0(R.layout.expand_button);
        i0(R.drawable.ic_arrow_down_24dp);
        q0(R.string.expand_button_title);
        n0(999);
    }

    private void z0(List<Preference> list) {
        ArrayList arrayList = new ArrayList();
        CharSequence string = null;
        for (Preference preference : list) {
            CharSequence charSequenceB = preference.B();
            boolean z6 = preference instanceof PreferenceGroup;
            if (z6 && !TextUtils.isEmpty(charSequenceB)) {
                arrayList.add((PreferenceGroup) preference);
            }
            if (arrayList.contains(preference.s())) {
                if (z6) {
                    arrayList.add((PreferenceGroup) preference);
                }
            } else if (!TextUtils.isEmpty(charSequenceB)) {
                string = string == null ? charSequenceB : i().getString(R.string.summary_collapsed_preference_list, string, charSequenceB);
            }
        }
        o0(string);
    }

    ExpandButton(@NonNull Context context, List<Preference> list, long j6) {
        super(context);
        y0();
        z0(list);
        this.mId = j6 + 1000000;
    }

    @Override // androidx.preference.Preference
    public void N(@NonNull PreferenceViewHolder preferenceViewHolder) {
        super.N(preferenceViewHolder);
        preferenceViewHolder.e(false);
    }
}

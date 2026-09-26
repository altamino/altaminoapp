package com.narvii.flag.resolve;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.chat.template.MessageTemplateFragment;
import com.narvii.flag.model.Flag;
import com.narvii.list.NVListFragment;
import com.narvii.list.prefs.PrefsAdapter;
import com.narvii.list.prefs.PrefsEntry;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class FlagResolveFragment extends NVListFragment {
    final Callback<PrefsEntry> entryCallback = new Callback<PrefsEntry>() { // from class: com.narvii.flag.resolve.FlagResolveFragment.2
        public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.util.Callback
        public void call(PrefsEntry prefsEntry) {
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(FlagResolveFragment.this, FragmentWrapperActivity.intent(MessageTemplateFragment.class));
        }
    };
    private Flag mFlag;

    class FlagResolveAdapter extends PrefsAdapter {
        public FlagResolveAdapter() {
            super(FlagResolveFragment.this);
        }

        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(List<Object> list) {
            PrefsEntry prefsEntry = new PrefsEntry(R.string.flag_resolve_bullying);
            prefsEntry.callback = FlagResolveFragment.this.entryCallback;
            list.add(prefsEntry);
            PrefsEntry prefsEntry2 = new PrefsEntry(R.string.flag_resolve_topic);
            prefsEntry2.callback = FlagResolveFragment.this.entryCallback;
            list.add(prefsEntry2);
            PrefsEntry prefsEntry3 = new PrefsEntry(R.string.flag_resolve_spam);
            prefsEntry3.callback = FlagResolveFragment.this.entryCallback;
            list.add(prefsEntry3);
            PrefsEntry prefsEntry4 = new PrefsEntry(R.string.flag_resolve_violated_guidelines);
            prefsEntry4.callback = FlagResolveFragment.this.entryCallback;
            list.add(prefsEntry4);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new FlagResolveAdapter();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFlag = (Flag) JacksonUtils.readAs(getStringParam("flag_item"), Flag.class);
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.flag_reslove_fragment_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Flag flag = this.mFlag;
        if (flag != null && flag.objectUser != null) {
            ((ThumbImageView) view.findViewById(R.id.avatar)).setImageUrl(this.mFlag.objectUser.icon());
            ((NicknameView) view.findViewById(R.id.nickname)).setUser(this.mFlag.objectUser);
            ((TextView) view.findViewById(R.id.strike_count)).setText(this.mFlag.getStrikeSpanStr(getContext()));
        }
        view.findViewById(R.id.flag_resolve_reason_close).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.flag.resolve.FlagResolveFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                FlagResolveFragment.this.finish();
            }
        });
    }
}

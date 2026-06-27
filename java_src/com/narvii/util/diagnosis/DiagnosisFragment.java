package com.narvii.util.diagnosis;

import android.content.ClipboardManager;
import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.narvii.account.AccountService;
import com.narvii.ads.Ads;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.util.ABTest2;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiService;
import com.tencent.bugly.crashreport.CrashReport;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class DiagnosisFragment extends NVFragment implements Runnable {
    ArrayList<DiagnosisTask> tasks;
    TextView text;

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("Diagnosis");
        setHasOptionsMenu(true);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.debug_info, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.text = (TextView) view.findViewById(R.id.text);
        this.text.setTextSize(1, 16.0f);
        reset();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        Iterator<DiagnosisTask> it = this.tasks.iterator();
        while (it.hasNext()) {
            it.next().destory();
        }
        this.tasks.clear();
        super.onDestroy();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        Utils.handler.removeCallbacks(this);
        Utils.post(this);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        Utils.handler.removeCallbacks(this);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menu.add(0, 1, 0, "Restart");
        menu.add(0, 2, 0, "Copy");
        menu.add(0, 3, 0, "Send");
        menu.add(0, 4, 0, "Toast");
        if (getBooleanParam("showExtras")) {
            menu.add(0, 11, 0, "Tapdaq Test");
            menu.add(0, 12, 0, "Admob Test");
            menu.add(0, 97, 0, "ANR");
            menu.add(0, 98, 0, "Java Crash");
            menu.add(0, 99, 0, "Native Crash");
        }
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 1) {
            reset();
            return true;
        }
        if (menuItem.getItemId() == 2) {
            try {
                ((ClipboardManager) getContext().getSystemService("clipboard")).setText(this.text.getText().toString());
                NVToast.makeText(getContext(), R.string.share_copy_to_clipboard_success, 0).show();
            } catch (Exception unused) {
                NVToast.makeText(getContext(), R.string.share_copy_to_clipboard_fail, 0).show();
            }
            if (getBooleanParam("showExtras")) {
                System.out.println(this.text.getText().toString());
            }
            return true;
        }
        if (menuItem.getItemId() == 3) {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.SUBJECT", "Diagnosis Result");
            intent.putExtra("android.intent.extra.TEXT", this.text.getText().toString());
            startActivity(intent);
            return true;
        }
        if (menuItem.getItemId() == 4) {
            Runnable runnable = new Runnable() { // from class: com.narvii.util.diagnosis.DiagnosisFragment.1
                @Override // java.lang.Runnable
                public void run() {
                    NVToast.makeText(DiagnosisFragment.this.getContext(), "Boston is one of the oldest cities in the United States, founded on the Shawmut Peninsula in 1630 by Puritan settlers from England. It was the scene of several key events of the American Revolution, such as the Boston Massacre, the Boston Tea Party, the Battle of Bunker Hill, and the Siege of Boston. Upon U.S. independence from Great Britain, it continued to be an important port and manufacturing hub as well as a center for education and culture. The city has expanded beyond the original peninsula through land reclamation and municipal annexation. Its rich history attracts many tourists, with Faneuil Hall alone drawing more than 20 million visitors per year. Boston's many firsts include the United States' first public or state school (Boston Latin School, 1635), first subway system (Tremont Street Subway, 1897), and first public park (Boston Common, 1634).", 0).show();
                }
            };
            Utils.post(runnable);
            Utils.postDelayed(runnable, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
            return true;
        }
        if (menuItem.getItemId() == 11) {
            Ads.testTapdaq((NVActivity) getActivity());
            return true;
        }
        if (menuItem.getItemId() == 12) {
            Ads.testAdmob((NVActivity) getActivity());
            return true;
        }
        if (menuItem.getItemId() == 97) {
            CrashReport.testANRCrash();
            return true;
        }
        if (menuItem.getItemId() == 98) {
            CrashReport.testJavaCrash();
            return true;
        }
        if (menuItem.getItemId() == 99) {
            CrashReport.testNativeCrash();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    void reset() {
        ArrayList<DiagnosisTask> arrayList = this.tasks;
        if (arrayList != null) {
            Iterator<DiagnosisTask> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().destory();
            }
            this.tasks.clear();
            Utils.handler.removeCallbacks(this);
        }
        AccountService accountService = (AccountService) getService("account");
        this.tasks = new ArrayList<>();
        this.tasks.add(new LocalTask(this));
        this.tasks.add(new GoogleApiTask(this));
        this.tasks.add(new VVTask(this));
        this.tasks.add(new ConnectivityTask(this));
        this.tasks.add(new ApiTask(this));
        if (accountService.hasAccount()) {
            this.tasks.add(new AccountTask(this));
            this.tasks.add(new PushTask(this));
            this.tasks.add(new WsTask(this));
            this.tasks.add(new AdsTask(this));
        }
        this.tasks.add(new IabTask(this));
        Iterator<DiagnosisTask> it2 = this.tasks.iterator();
        while (it2.hasNext()) {
            it2.next().start();
        }
        if (isResumed()) {
            Utils.post(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        Iterator<DiagnosisTask> it = this.tasks.iterator();
        while (it.hasNext()) {
            it.next().appendTo(spannableStringBuilder);
        }
        spannableStringBuilder.append('\n').append((CharSequence) "TD=").append((CharSequence) (ApiService.isTimeSynced() ? String.valueOf((System.currentTimeMillis() - ApiService.timestamp()) / 1000) : "?"));
        spannableStringBuilder.append('\n').append((CharSequence) System.getProperty("http.agent"));
        if (getBooleanParam("showExtras")) {
            AccountService accountService = (AccountService) getService("account");
            spannableStringBuilder.append('\n').append((CharSequence) ("uid=" + accountService.getUserId()));
            spannableStringBuilder.append('\n').append((CharSequence) ("did=" + accountService.getDeviceId()));
            String string = getContext().getSharedPreferences("push", 0).getString("gcmToken", null);
            spannableStringBuilder.append('\n').append((CharSequence) ("gcmToken=" + string));
            spannableStringBuilder.append('\n');
            StringBuilder sb = new StringBuilder();
            ABTest2.allTags(this, sb);
            spannableStringBuilder.append('\n').append((CharSequence) "ab=").append((CharSequence) sb);
        }
        this.text.setText(spannableStringBuilder);
        Utils.postDelayed(this, 100L);
    }
}

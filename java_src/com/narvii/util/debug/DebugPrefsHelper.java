package com.narvii.util.debug;

import android.content.Intent;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.list.prefs.PrefsEntry;
import com.narvii.list.prefs.PrefsItem;
import com.narvii.list.prefs.PrefsSection;
import com.narvii.modulization.ConfigApiRequestHelper;
import com.narvii.util.DateUtils;
import com.narvii.util.Utils;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class DebugPrefsHelper {
    private ArrayList<PrefsItem> crashReports = new ArrayList<>();
    NVContext nvContext;

    public DebugPrefsHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        initCrashReports();
    }

    private void initCrashReports() {
        File[] fileArrListFiles = new File(Utils.getAvailableFileDir(this.nvContext.getContext()), "CrashReport").listFiles();
        if (fileArrListFiles != null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd-HHmmss", Locale.US);
            long jCurrentTimeMillis = System.currentTimeMillis();
            ArrayList arrayList = new ArrayList();
            for (File file : fileArrListFiles) {
                String name = file.getName();
                if (name.endsWith(".log")) {
                    try {
                        if (jCurrentTimeMillis - simpleDateFormat.parse(name.substring(0, name.length() - 4)).getTime() < DateUtils.ONE_DAY) {
                            arrayList.add(file);
                        }
                    } catch (Exception unused) {
                    }
                }
            }
            Collections.sort(arrayList, new Comparator<File>() { // from class: com.narvii.util.debug.DebugPrefsHelper.1
                @Override // java.util.Comparator
                public int compare(File file2, File file3) {
                    return file2.getName().compareToIgnoreCase(file3.getName());
                }
            });
            int iMax = Math.max(0, arrayList.size() - 5);
            for (int size = arrayList.size() - 1; size >= iMax; size += -1) {
                File file2 = (File) arrayList.get(size);
                Intent intent = FragmentWrapperActivity.intent(CrashReportFragment.class);
                intent.putExtra(ConfigApiRequestHelper.PATH_KEY, file2.getAbsolutePath());
                PrefsEntry prefsEntry = new PrefsEntry("Crash " + file2.getName());
                prefsEntry.callbackIntent = intent;
                this.crashReports.add(prefsEntry);
            }
        }
    }

    public void addCells(List<Object> list) {
        list.add(new PrefsSection("Debug"));
        list.addAll(this.crashReports);
        PrefsEntry prefsEntry = new PrefsEntry("Device Info");
        prefsEntry.callbackIntent = FragmentWrapperActivity.intent(DebugInfoFragment.class);
        list.add(prefsEntry);
    }
}

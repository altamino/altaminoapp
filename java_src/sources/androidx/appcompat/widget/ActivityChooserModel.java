package androidx.appcompat.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes3.dex */
class ActivityChooserModel extends DataSetObservable {
    static final String ATTRIBUTE_ACTIVITY = "activity";
    static final String ATTRIBUTE_TIME = "time";
    static final String ATTRIBUTE_WEIGHT = "weight";
    static final boolean DEBUG = false;
    private static final int DEFAULT_ACTIVITY_INFLATION = 5;
    private static final float DEFAULT_HISTORICAL_RECORD_WEIGHT = 1.0f;
    public static final String DEFAULT_HISTORY_FILE_NAME = "activity_choser_model_history.xml";
    public static final int DEFAULT_HISTORY_MAX_LENGTH = 50;
    private static final String HISTORY_FILE_EXTENSION = ".xml";
    private static final int INVALID_INDEX = -1;
    static final String LOG_TAG = "ActivityChooserModel";
    static final String TAG_HISTORICAL_RECORD = "historical-record";
    static final String TAG_HISTORICAL_RECORDS = "historical-records";
    private OnChooseActivityListener mActivityChoserModelPolicy;
    final Context mContext;
    final String mHistoryFileName;
    private Intent mIntent;
    private static final Object sRegistryLock = new Object();
    private static final Map<String, ActivityChooserModel> sDataModelRegistry = new HashMap();
    private final Object mInstanceLock = new Object();
    private final List<ActivityResolveInfo> mActivities = new ArrayList();
    private final List<HistoricalRecord> mHistoricalRecords = new ArrayList();
    private ActivitySorter mActivitySorter = new DefaultSorter();
    private int mHistoryMaxSize = 50;
    boolean mCanReadHistoricalData = true;
    private boolean mReadShareHistoryCalled = false;
    private boolean mHistoricalRecordsChanged = true;
    private boolean mReloadActivities = false;

    public interface ActivityChooserModelClient {
    }

    public static final class ActivityResolveInfo implements Comparable<ActivityResolveInfo> {
        public final ResolveInfo resolveInfo;
        public float weight;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && ActivityResolveInfo.class == obj.getClass() && Float.floatToIntBits(this.weight) == Float.floatToIntBits(((ActivityResolveInfo) obj).weight);
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(ActivityResolveInfo activityResolveInfo) {
            return Float.floatToIntBits(activityResolveInfo.weight) - Float.floatToIntBits(this.weight);
        }

        public int hashCode() {
            return Float.floatToIntBits(this.weight) + 31;
        }

        public String toString() {
            return "[resolveInfo:" + this.resolveInfo.toString() + "; weight:" + new BigDecimal(this.weight) + "]";
        }

        public ActivityResolveInfo(ResolveInfo resolveInfo) {
            this.resolveInfo = resolveInfo;
        }
    }

    public interface ActivitySorter {
        void a(Intent intent, List<ActivityResolveInfo> list, List<HistoricalRecord> list2);
    }

    private static final class DefaultSorter implements ActivitySorter {
        private static final float WEIGHT_DECAY_COEFFICIENT = 0.95f;
        private final Map<ComponentName, ActivityResolveInfo> mPackageNameToActivityMap = new HashMap();

        @Override // androidx.appcompat.widget.ActivityChooserModel.ActivitySorter
        public void a(Intent intent, List<ActivityResolveInfo> list, List<HistoricalRecord> list2) {
            Map<ComponentName, ActivityResolveInfo> map = this.mPackageNameToActivityMap;
            map.clear();
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                ActivityResolveInfo activityResolveInfo = list.get(i10);
                activityResolveInfo.weight = 0.0f;
                ActivityInfo activityInfo = activityResolveInfo.resolveInfo.activityInfo;
                map.put(new ComponentName(activityInfo.packageName, activityInfo.name), activityResolveInfo);
            }
            float f = 1.0f;
            for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
                HistoricalRecord historicalRecord = list2.get(size2);
                ActivityResolveInfo activityResolveInfo2 = map.get(historicalRecord.activity);
                if (activityResolveInfo2 != null) {
                    activityResolveInfo2.weight += historicalRecord.weight * f;
                    f *= WEIGHT_DECAY_COEFFICIENT;
                }
            }
            Collections.sort(list);
        }

        DefaultSorter() {
        }
    }

    public static final class HistoricalRecord {
        public final ComponentName activity;
        public final long time;
        public final float weight;

        public HistoricalRecord(String str, long j6, float f) {
            this(ComponentName.unflattenFromString(str), j6, f);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || HistoricalRecord.class != obj.getClass()) {
                return false;
            }
            HistoricalRecord historicalRecord = (HistoricalRecord) obj;
            ComponentName componentName = this.activity;
            if (componentName == null) {
                if (historicalRecord.activity != null) {
                    return false;
                }
            } else if (!componentName.equals(historicalRecord.activity)) {
                return false;
            }
            return this.time == historicalRecord.time && Float.floatToIntBits(this.weight) == Float.floatToIntBits(historicalRecord.weight);
        }

        public HistoricalRecord(ComponentName componentName, long j6, float f) {
            this.activity = componentName;
            this.time = j6;
            this.weight = f;
        }

        public int hashCode() {
            ComponentName componentName = this.activity;
            int iHashCode = componentName == null ? 0 : componentName.hashCode();
            long j6 = this.time;
            return ((((iHashCode + 31) * 31) + ((int) (j6 ^ (j6 >>> 32)))) * 31) + Float.floatToIntBits(this.weight);
        }

        public String toString() {
            return "[; activity:" + this.activity + "; time:" + this.time + "; weight:" + new BigDecimal(this.weight) + "]";
        }
    }

    public interface OnChooseActivityListener {
        boolean a(ActivityChooserModel activityChooserModel, Intent intent);
    }

    private final class PersistHistoryAsyncTask extends AsyncTask<Object, Void, Void> {
        PersistHistoryAsyncTask() {
        }

        /* JADX WARN: Code duplicated, block: B:44:0x0076 A[DONT_GENERATE, EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Object... objArr) {
            List list = (List) objArr[0];
            String str = (String) objArr[1];
            try {
                FileOutputStream fileOutputStreamOpenFileOutput = ActivityChooserModel.this.mContext.openFileOutput(str, 0);
                XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
                try {
                    xmlSerializerNewSerializer.setOutput(fileOutputStreamOpenFileOutput, null);
                    xmlSerializerNewSerializer.startDocument("UTF-8", Boolean.TRUE);
                    xmlSerializerNewSerializer.startTag(null, ActivityChooserModel.TAG_HISTORICAL_RECORDS);
                    int size = list.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        HistoricalRecord historicalRecord = (HistoricalRecord) list.remove(0);
                        xmlSerializerNewSerializer.startTag(null, ActivityChooserModel.TAG_HISTORICAL_RECORD);
                        xmlSerializerNewSerializer.attribute(null, ActivityChooserModel.ATTRIBUTE_ACTIVITY, historicalRecord.activity.flattenToString());
                        xmlSerializerNewSerializer.attribute(null, ActivityChooserModel.ATTRIBUTE_TIME, String.valueOf(historicalRecord.time));
                        xmlSerializerNewSerializer.attribute(null, ActivityChooserModel.ATTRIBUTE_WEIGHT, String.valueOf(historicalRecord.weight));
                        xmlSerializerNewSerializer.endTag(null, ActivityChooserModel.TAG_HISTORICAL_RECORD);
                    }
                    xmlSerializerNewSerializer.endTag(null, ActivityChooserModel.TAG_HISTORICAL_RECORDS);
                    xmlSerializerNewSerializer.endDocument();
                } catch (IOException e) {
                    Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + ActivityChooserModel.this.mHistoryFileName, e);
                } catch (IllegalStateException e2) {
                    Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + ActivityChooserModel.this.mHistoryFileName, e2);
                } catch (IllegalArgumentException e6) {
                    Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + ActivityChooserModel.this.mHistoryFileName, e6);
                } finally {
                    ActivityChooserModel.this.mCanReadHistoricalData = true;
                    if (fileOutputStreamOpenFileOutput != null) {
                        try {
                            fileOutputStreamOpenFileOutput.close();
                        } catch (IOException unused) {
                        }
                    }
                }
                return null;
            } catch (FileNotFoundException e7) {
                Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + str, e7);
                return null;
            }
        }
    }

    private boolean a(HistoricalRecord historicalRecord) {
        boolean zAdd = this.mHistoricalRecords.add(historicalRecord);
        if (zAdd) {
            this.mHistoricalRecordsChanged = true;
            l();
            k();
            p();
            notifyChanged();
        }
        return zAdd;
    }

    public static ActivityChooserModel d(Context context, String str) {
        ActivityChooserModel activityChooserModel;
        synchronized (sRegistryLock) {
            try {
                Map<String, ActivityChooserModel> map = sDataModelRegistry;
                activityChooserModel = map.get(str);
                if (activityChooserModel == null) {
                    activityChooserModel = new ActivityChooserModel(context, str);
                    map.put(str, activityChooserModel);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return activityChooserModel;
    }

    private boolean j() {
        if (!this.mReloadActivities || this.mIntent == null) {
            return false;
        }
        this.mReloadActivities = false;
        this.mActivities.clear();
        List<ResolveInfo> listQueryIntentActivities = this.mContext.getPackageManager().queryIntentActivities(this.mIntent, 0);
        int size = listQueryIntentActivities.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mActivities.add(new ActivityResolveInfo(listQueryIntentActivities.get(i10)));
        }
        return true;
    }

    private void k() {
        if (!this.mReadShareHistoryCalled) {
            throw new IllegalStateException("No preceding call to #readHistoricalData");
        }
        if (this.mHistoricalRecordsChanged) {
            this.mHistoricalRecordsChanged = false;
            if (TextUtils.isEmpty(this.mHistoryFileName)) {
                return;
            }
            new PersistHistoryAsyncTask().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new ArrayList(this.mHistoricalRecords), this.mHistoryFileName);
        }
    }

    private void l() {
        int size = this.mHistoricalRecords.size() - this.mHistoryMaxSize;
        if (size <= 0) {
            return;
        }
        this.mHistoricalRecordsChanged = true;
        for (int i10 = 0; i10 < size; i10++) {
            this.mHistoricalRecords.remove(0);
        }
    }

    private boolean m() {
        if (!this.mCanReadHistoricalData || !this.mHistoricalRecordsChanged || TextUtils.isEmpty(this.mHistoryFileName)) {
            return false;
        }
        this.mCanReadHistoricalData = false;
        this.mReadShareHistoryCalled = true;
        n();
        return true;
    }

    private void n() {
        FileInputStream fileInputStreamOpenFileInput;
        try {
            try {
                fileInputStreamOpenFileInput = this.mContext.openFileInput(this.mHistoryFileName);
                try {
                    XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                    xmlPullParserNewPullParser.setInput(fileInputStreamOpenFileInput, "UTF-8");
                    for (int next = 0; next != 1 && next != 2; next = xmlPullParserNewPullParser.next()) {
                    }
                    if (!TAG_HISTORICAL_RECORDS.equals(xmlPullParserNewPullParser.getName())) {
                        throw new XmlPullParserException("Share records file does not start with historical-records tag.");
                    }
                    List<HistoricalRecord> list = this.mHistoricalRecords;
                    list.clear();
                    while (true) {
                        int next2 = xmlPullParserNewPullParser.next();
                        if (next2 == 1) {
                            if (fileInputStreamOpenFileInput != null) {
                                break;
                            } else {
                                return;
                            }
                        } else if (next2 != 3 && next2 != 4) {
                            if (!TAG_HISTORICAL_RECORD.equals(xmlPullParserNewPullParser.getName())) {
                                throw new XmlPullParserException("Share records file not well-formed.");
                            }
                            list.add(new HistoricalRecord(xmlPullParserNewPullParser.getAttributeValue(null, ATTRIBUTE_ACTIVITY), Long.parseLong(xmlPullParserNewPullParser.getAttributeValue(null, ATTRIBUTE_TIME)), Float.parseFloat(xmlPullParserNewPullParser.getAttributeValue(null, ATTRIBUTE_WEIGHT))));
                        }
                    }
                    try {
                        fileInputStreamOpenFileInput.close();
                    } catch (IOException unused) {
                    }
                } catch (IOException e) {
                    Log.e(LOG_TAG, "Error reading historical recrod file: " + this.mHistoryFileName, e);
                    if (fileInputStreamOpenFileInput == null) {
                    }
                } catch (XmlPullParserException e2) {
                    Log.e(LOG_TAG, "Error reading historical recrod file: " + this.mHistoryFileName, e2);
                    if (fileInputStreamOpenFileInput == null) {
                    }
                }
            } catch (FileNotFoundException unused2) {
            }
        } catch (Throwable th) {
            if (fileInputStreamOpenFileInput != null) {
                try {
                    fileInputStreamOpenFileInput.close();
                } catch (IOException unused3) {
                }
            }
            throw th;
        }
    }

    private boolean p() {
        if (this.mActivitySorter == null || this.mIntent == null || this.mActivities.isEmpty() || this.mHistoricalRecords.isEmpty()) {
            return false;
        }
        this.mActivitySorter.a(this.mIntent, this.mActivities, Collections.unmodifiableList(this.mHistoricalRecords));
        return true;
    }

    public Intent b(int i10) {
        synchronized (this.mInstanceLock) {
            try {
                if (this.mIntent == null) {
                    return null;
                }
                c();
                ActivityInfo activityInfo = this.mActivities.get(i10).resolveInfo.activityInfo;
                ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
                Intent intent = new Intent(this.mIntent);
                intent.setComponent(componentName);
                if (this.mActivityChoserModelPolicy != null) {
                    if (this.mActivityChoserModelPolicy.a(this, new Intent(intent))) {
                        return null;
                    }
                }
                a(new HistoricalRecord(componentName, System.currentTimeMillis(), 1.0f));
                return intent;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public ResolveInfo e(int i10) {
        ResolveInfo resolveInfo;
        synchronized (this.mInstanceLock) {
            c();
            resolveInfo = this.mActivities.get(i10).resolveInfo;
        }
        return resolveInfo;
    }

    public int f() {
        int size;
        synchronized (this.mInstanceLock) {
            c();
            size = this.mActivities.size();
        }
        return size;
    }

    public int g(ResolveInfo resolveInfo) {
        synchronized (this.mInstanceLock) {
            try {
                c();
                List<ActivityResolveInfo> list = this.mActivities;
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    if (list.get(i10).resolveInfo == resolveInfo) {
                        return i10;
                    }
                }
                return -1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public ResolveInfo h() {
        synchronized (this.mInstanceLock) {
            try {
                c();
                if (this.mActivities.isEmpty()) {
                    return null;
                }
                return this.mActivities.get(0).resolveInfo;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int i() {
        int size;
        synchronized (this.mInstanceLock) {
            c();
            size = this.mHistoricalRecords.size();
        }
        return size;
    }

    public void o(int i10) {
        synchronized (this.mInstanceLock) {
            try {
                c();
                ActivityResolveInfo activityResolveInfo = this.mActivities.get(i10);
                ActivityResolveInfo activityResolveInfo2 = this.mActivities.get(0);
                float f = activityResolveInfo2 != null ? (activityResolveInfo2.weight - activityResolveInfo.weight) + 5.0f : 1.0f;
                ActivityInfo activityInfo = activityResolveInfo.resolveInfo.activityInfo;
                a(new HistoricalRecord(new ComponentName(activityInfo.packageName, activityInfo.name), System.currentTimeMillis(), f));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private ActivityChooserModel(Context context, String str) {
        this.mContext = context.getApplicationContext();
        if (!TextUtils.isEmpty(str) && !str.endsWith(HISTORY_FILE_EXTENSION)) {
            this.mHistoryFileName = str + HISTORY_FILE_EXTENSION;
            return;
        }
        this.mHistoryFileName = str;
    }

    private void c() {
        boolean zJ = j() | m();
        l();
        if (zJ) {
            p();
            notifyChanged();
        }
    }
}

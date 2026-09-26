package e4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import c4.j;
import com.google.firebase.crashlytics.internal.common.m;
import com.google.firebase.crashlytics.internal.common.u;
import com.google.firebase.crashlytics.internal.g;
import com.google.firebase.crashlytics.internal.metadata.n;
import com.google.firebase.crashlytics.internal.model.f0;
import com.google.firebase.crashlytics.internal.settings.i;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes10.dex */
public class e {
    private static final String EVENT_COUNTER_FORMAT = "%010d";
    private static final int EVENT_COUNTER_WIDTH = 10;
    private static final String EVENT_FILE_NAME_PREFIX = "event";
    private static final int MAX_OPEN_SESSIONS = 8;
    private static final String NORMAL_EVENT_SUFFIX = "";
    private static final String PRIORITY_EVENT_SUFFIX = "_";
    private static final String REPORT_FILE_NAME = "report";
    private static final String SESSION_START_TIMESTAMP_FILE_NAME = "start-time";
    private final AtomicInteger eventCounter = new AtomicInteger(0);
    private final f fileStore;
    private final m sessionsSubscriber;
    private final i settingsProvider;
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private static final int EVENT_NAME_LENGTH = 15;
    private static final j TRANSFORM = new j();
    private static final Comparator<? super File> LATEST_SESSION_ID_FIRST_COMPARATOR = new Comparator() { // from class: e4.c
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return e.u((File) obj, (File) obj2);
        }
    };
    private static final FilenameFilter EVENT_FILE_FILTER = new FilenameFilter() { // from class: e4.d
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return e.v(file, str);
        }
    };

    private static long h(long j6) {
        return j6 * 1000;
    }

    @NonNull
    private static String o(@NonNull String str) {
        return str.substring(0, EVENT_NAME_LENGTH);
    }

    @NonNull
    private static String A(@NonNull File file) throws IOException {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int i10 = fileInputStream.read(bArr);
                if (i10 <= 0) {
                    String str = new String(byteArrayOutputStream.toByteArray(), UTF_8);
                    fileInputStream.close();
                    return str;
                }
                byteArrayOutputStream.write(bArr, 0, i10);
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    private void B(@NonNull File file, @NonNull f0.d dVar, @NonNull String str, f0.a aVar) {
        String strD = this.sessionsSubscriber.d(str);
        try {
            j jVar = TRANSFORM;
            F(this.fileStore.g(str), jVar.M(jVar.L(A(file)).s(dVar).p(aVar).o(strD)));
        } catch (IOException e) {
            g.f().l("Could not synthesize final native report file for " + file, e);
        }
    }

    private void C(String str, long j6) {
        boolean z6;
        List<File> listP = this.fileStore.p(str, EVENT_FILE_FILTER);
        if (listP.isEmpty()) {
            g.f().i("Session " + str + " has no events.");
            return;
        }
        Collections.sort(listP);
        ArrayList arrayList = new ArrayList();
        Iterator<File> it = listP.iterator();
        loop0: while (true) {
            z6 = false;
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                }
                File next = it.next();
                try {
                    arrayList.add(TRANSFORM.j(A(next)));
                    if (z6 || s(next.getName())) {
                        z6 = true;
                    }
                } catch (IOException e) {
                    g.f().l("Could not add event to report for " + next, e);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            D(this.fileStore.o(str, REPORT_FILE_NAME), arrayList, j6, z6, n.m(str, this.fileStore), this.sessionsSubscriber.d(str));
        } else {
            g.f().k("Could not parse event files for session " + str);
        }
    }

    private void D(@NonNull File file, @NonNull List<f0.e.d> list, long j6, boolean z6, @Nullable String str, @Nullable String str2) {
        try {
            j jVar = TRANSFORM;
            f0 f0VarQ = jVar.L(A(file)).t(j6, z6, str).o(str2).q(list);
            f0.e eVarM = f0VarQ.m();
            if (eVarM == null) {
                return;
            }
            g.f().b("appQualitySessionId: " + str2);
            F(z6 ? this.fileStore.j(eVarM.i()) : this.fileStore.l(eVarM.i()), jVar.M(f0VarQ));
        } catch (IOException e) {
            g.f().l("Could not synthesize final report file for " + file, e);
        }
    }

    private int E(String str, int i10) {
        List<File> listP = this.fileStore.p(str, new FilenameFilter() { // from class: e4.a
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                return e.t(file, str2);
            }
        });
        Collections.sort(listP, new Comparator() { // from class: e4.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return e.x((File) obj, (File) obj2);
            }
        });
        return f(listP, i10);
    }

    private static void F(File file, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), UTF_8);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void G(File file, String str, long j6) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), UTF_8);
        try {
            outputStreamWriter.write(str);
            file.setLastModified(h(j6));
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private SortedSet<String> e(@Nullable String str) {
        this.fileStore.b();
        SortedSet<String> sortedSetP = p();
        if (str != null) {
            sortedSetP.remove(str);
        }
        if (sortedSetP.size() <= 8) {
            return sortedSetP;
        }
        while (sortedSetP.size() > 8) {
            String strLast = sortedSetP.last();
            g.f().b("Removing session over cap: " + strLast);
            this.fileStore.c(strLast);
            sortedSetP.remove(strLast);
        }
        return sortedSetP;
    }

    private void g() {
        int i10 = this.settingsProvider.a().sessionData.maxCompleteSessionsCount;
        List<File> listN = n();
        int size = listN.size();
        if (size <= i10) {
            return;
        }
        Iterator<File> it = listN.subList(i10, size).iterator();
        while (it.hasNext()) {
            it.next().delete();
        }
    }

    @NonNull
    private static String m(int i10, boolean z6) {
        return "event" + String.format(Locale.US, EVENT_COUNTER_FORMAT, Integer.valueOf(i10)) + (z6 ? PRIORITY_EVENT_SUFFIX : "");
    }

    private List<File> n() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.fileStore.k());
        arrayList.addAll(this.fileStore.h());
        Comparator<? super File> comparator = LATEST_SESSION_ID_FIRST_COMPARATOR;
        Collections.sort(arrayList, comparator);
        List<File> listM = this.fileStore.m();
        Collections.sort(listM, comparator);
        arrayList.addAll(listM);
        return arrayList;
    }

    private static boolean s(@NonNull String str) {
        return str.startsWith("event") && str.endsWith(PRIORITY_EVENT_SUFFIX);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean t(@NonNull File file, @NonNull String str) {
        return str.startsWith("event") && !str.endsWith(PRIORITY_EVENT_SUFFIX);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean v(File file, String str) {
        return str.startsWith("event");
    }

    public void i() {
        j(this.fileStore.m());
        j(this.fileStore.k());
        j(this.fileStore.h());
    }

    public void l(String str, f0.d dVar, f0.a aVar) {
        File fileO = this.fileStore.o(str, REPORT_FILE_NAME);
        g.f().b("Writing native session report for " + str + " to file: " + fileO);
        B(fileO, dVar, str, aVar);
    }

    public SortedSet<String> p() {
        return new TreeSet(this.fileStore.d()).descendingSet();
    }

    public long q(String str) {
        return this.fileStore.o(str, SESSION_START_TIMESTAMP_FILE_NAME).lastModified();
    }

    public boolean r() {
        return (this.fileStore.m().isEmpty() && this.fileStore.k().isEmpty() && this.fileStore.h().isEmpty()) ? false : true;
    }

    public void y(@NonNull f0.e.d dVar, @NonNull String str, boolean z6) {
        int i10 = this.settingsProvider.a().sessionData.maxCustomExceptionEvents;
        try {
            F(this.fileStore.o(str, m(this.eventCounter.getAndIncrement(), z6)), TRANSFORM.k(dVar));
        } catch (IOException e) {
            g.f().l("Could not persist event for session " + str, e);
        }
        E(str, i10);
    }

    public e(f fVar, i iVar, m mVar) {
        this.fileStore = fVar;
        this.settingsProvider = iVar;
        this.sessionsSubscriber = mVar;
    }

    private static int f(List<File> list, int i10) {
        int size = list.size();
        for (File file : list) {
            if (size <= i10) {
                return size;
            }
            f.s(file);
            size--;
        }
        return size;
    }

    private void j(List<File> list) {
        Iterator<File> it = list.iterator();
        while (it.hasNext()) {
            it.next().delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int u(File file, File file2) {
        return file2.getName().compareTo(file.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int x(@NonNull File file, @NonNull File file2) {
        return o(file.getName()).compareTo(o(file2.getName()));
    }

    public void k(@Nullable String str, long j6) {
        for (String str2 : e(str)) {
            g.f().i("Finalizing report for session " + str2);
            C(str2, j6);
            this.fileStore.c(str2);
        }
        g();
    }

    @NonNull
    public List<u> w() {
        List<File> listN = n();
        ArrayList arrayList = new ArrayList();
        for (File file : listN) {
            try {
                arrayList.add(u.a(TRANSFORM.L(A(file)), file.getName(), file));
            } catch (IOException e) {
                g.f().l("Could not load report file " + file + "; deleting", e);
                file.delete();
            }
        }
        return arrayList;
    }

    public void z(@NonNull f0 f0Var) {
        f0.e eVarM = f0Var.m();
        if (eVarM == null) {
            g.f().b("Could not get session for report");
            return;
        }
        String strI = eVarM.i();
        try {
            F(this.fileStore.o(strI, REPORT_FILE_NAME), TRANSFORM.M(f0Var));
            G(this.fileStore.o(strI, SESSION_START_TIMESTAMP_FILE_NAME), "", eVarM.l());
        } catch (IOException e) {
            g.f().c("Could not persist report for session " + strI, e);
        }
    }
}

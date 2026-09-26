package com.narvii.logging.Impression;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.app.NVContext;
import com.narvii.logging.Area;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectInfo;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class ImpressionUtils {
    private static int[] loc = new int[2];

    public static boolean isViewUserVisible(View view, View view2) {
        if (view != null && view2 != null && view2.getWidth() != 0 && view2.getHeight() != 0) {
            view.getLocationInWindow(loc);
            int i10 = loc[1];
            int height = view.getHeight() + i10;
            int i11 = loc[0];
            int width = view.getWidth() + i11;
            view2.getLocationInWindow(loc);
            int i12 = loc[1];
            int height2 = view2.getHeight() + i12;
            int i13 = loc[0];
            int width2 = view2.getWidth() + i13;
            if (height2 >= i10 && i12 <= height && width2 >= i11 && i13 <= width) {
                return true;
            }
        }
        return false;
    }

    public static void logImpressionQuit(ImpressionCollector impressionCollector, NVContext nVContext) {
    }

    public static void clearImpression(ImpressionCollector impressionCollector, NVContext nVContext) {
        if (impressionCollector == null) {
            return;
        }
        impressionCollector.clearImpressionList();
    }

    public static void logImpression(ImpressionCollector impressionCollector, NVContext nVContext) {
        if (impressionCollector == null) {
            return;
        }
        List newImpressionList = impressionCollector.getNewImpressionList();
        for (int i10 = 0; i10 < newImpressionList.size(); i10++) {
            ObjectInfo objectInfo = (ObjectInfo) newImpressionList.get(i10);
            LogEvent.Builder builderObjectInfo = LogEvent.builder(nVContext).impression().area(impressionCollector.getAdapter()).objectInfo(objectInfo);
            impressionCollector.completeImpressionLogBuilder(builderObjectInfo, objectInfo);
            builderObjectInfo.send();
        }
    }

    public static void logRecyclerImpression(Area area, int i10) {
        if (area != null && i10 == 0 && (area instanceof NVContext)) {
            NVContext nVContext = (NVContext) area;
            if (nVContext.getParentContext() instanceof ImpressionHost) {
                ((ImpressionHost) nVContext.getParentContext()).logImpressionQuit();
                ((ImpressionHost) nVContext.getParentContext()).logImpression();
            }
        }
    }

    public static void logStandaloneRecyclerImpression(RecyclerView recyclerView, ImpressionCollector impressionCollector, NVContext nVContext) {
        if (recyclerView == null) {
            return;
        }
        logImpressionQuit(impressionCollector, nVContext);
        logImpression(impressionCollector, nVContext);
    }
}

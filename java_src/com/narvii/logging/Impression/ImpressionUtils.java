package com.narvii.logging.Impression;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.logging.Area;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectInfo;
import java.util.List;

/* loaded from: classes3.dex */
public class ImpressionUtils {
    private static int[] loc = new int[2];

    public static void logImpressionQuit(ImpressionCollector impressionCollector, NVContext nVContext) {
    }

    public static boolean isViewUserVisible(View view, View view2) {
        if (view != null && view2 != null && view2.getWidth() != 0 && view2.getHeight() != 0) {
            view.getLocationInWindow(loc);
            int i = loc[1];
            int height = view.getHeight() + i;
            int i2 = loc[0];
            int width = view.getWidth() + i2;
            view2.getLocationInWindow(loc);
            int i3 = loc[1];
            int height2 = view2.getHeight() + i3;
            int i4 = loc[0];
            int width2 = view2.getWidth() + i4;
            if (height2 >= i && i3 <= height && width2 >= i2 && i4 <= width) {
                return true;
            }
        }
        return false;
    }

    public static void logRecyclerImpression(Area area, int i) {
        if (area != null && i == 0 && (area instanceof NVContext)) {
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

    public static void logImpression(ImpressionCollector impressionCollector, NVContext nVContext) {
        if (impressionCollector == null) {
            return;
        }
        List newImpressionList = impressionCollector.getNewImpressionList();
        for (int i = 0; i < newImpressionList.size(); i++) {
            ObjectInfo objectInfo = (ObjectInfo) newImpressionList.get(i);
            LogEvent.Builder builderObjectInfo = LogEvent.builder(nVContext).impression().area(impressionCollector.getAdapter()).objectInfo(objectInfo);
            impressionCollector.completeImpressionLogBuilder(builderObjectInfo, objectInfo);
            builderObjectInfo.send();
        }
    }

    public static void clearImpression(ImpressionCollector impressionCollector, NVContext nVContext) {
        if (impressionCollector == null) {
            return;
        }
        impressionCollector.clearImpressionList();
    }
}

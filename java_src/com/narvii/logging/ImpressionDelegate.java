package com.narvii.logging;

import android.view.ViewGroup;
import com.narvii.app.NVFragment;
import com.narvii.logging.Impression.ImpressionCollector;
import com.narvii.logging.Impression.ImpressionUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class ImpressionDelegate {
    List<ImpressionCollector> impressionCollectorList;
    ViewGroup listView;
    NVFragment nvFragment;
    boolean idle = true;
    Runnable impressionRunnable = new Runnable() { // from class: com.narvii.logging.ImpressionDelegate.1
        @Override // java.lang.Runnable
        public void run() {
            Utils.handler.removeCallbacks(ImpressionDelegate.this.innerImpressionRunnable);
            Utils.post(ImpressionDelegate.this.innerImpressionRunnable);
        }
    };
    Runnable innerImpressionRunnable = new Runnable() { // from class: com.narvii.logging.ImpressionDelegate.2
        @Override // java.lang.Runnable
        public void run() {
            NVFragment nVFragment = ImpressionDelegate.this.nvFragment;
            if (nVFragment == null || !nVFragment.isActive()) {
                return;
            }
            ImpressionDelegate.this.logImpressionQuit();
            ImpressionDelegate.this.logImpression();
        }
    };

    public ImpressionDelegate(NVFragment nVFragment) {
        this.nvFragment = nVFragment;
    }

    public void setListView(ViewGroup viewGroup) {
        this.listView = viewGroup;
    }

    public void addImpressionCollectorInListView(ImpressionCollector impressionCollector) {
        if (impressionCollector == null) {
            return;
        }
        if (this.impressionCollectorList == null) {
            this.impressionCollectorList = new ArrayList();
        }
        ViewGroup viewGroup = this.listView;
        if (viewGroup != null) {
            impressionCollector.setListView(viewGroup);
        } else {
            Log.e("impression", "listview is null");
        }
        this.impressionCollectorList.add(impressionCollector);
    }

    public void logImpressionQuit() {
        List<ImpressionCollector> list;
        if (this.listView == null || (list = this.impressionCollectorList) == null) {
            return;
        }
        Iterator<ImpressionCollector> it = list.iterator();
        while (it.hasNext()) {
            ImpressionUtils.logImpressionQuit(it.next(), this.nvFragment);
        }
    }

    public void clearImpression() {
        List<ImpressionCollector> list;
        if (this.listView == null || (list = this.impressionCollectorList) == null) {
            return;
        }
        Iterator<ImpressionCollector> it = list.iterator();
        while (it.hasNext()) {
            ImpressionUtils.clearImpression(it.next(), this.nvFragment);
        }
    }

    public void logImpression() {
        List<ImpressionCollector> list;
        if (this.nvFragment.isActive() && this.listView != null && this.idle && (list = this.impressionCollectorList) != null) {
            Iterator<ImpressionCollector> it = list.iterator();
            while (it.hasNext()) {
                ImpressionUtils.logImpression(it.next(), this.nvFragment);
            }
        }
    }

    public void postImpressionRunnable() {
        Utils.handler.removeCallbacks(this.impressionRunnable);
        Utils.post(this.impressionRunnable);
    }

    public void onScrollIdleStateChanged(boolean z) {
        if (this.idle == z) {
            return;
        }
        this.idle = z;
        logImpressionQuit();
        logImpression();
    }

    public void onLogActiveChanged(boolean z) {
        if (z) {
            logImpression();
        }
    }
}

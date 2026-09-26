package com.narvii.scene.poll;

import com.narvii.model.PollAttach;
import com.narvii.model.PollOption;
import com.narvii.model.story.ScenePollOrQuizHost;
import com.narvii.scene.ScenePlayRecord;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class PollExtensionKt {
    public static final void initPollPlayRecord(@Nullable List<? extends ScenePollOrQuizHost> list, @NotNull HashMap<String, ScenePlayRecord> map, boolean z6) {
        PollOption pollOption;
        List<PollOption> list2;
        Object next;
        t.j(map, "map");
        map.clear();
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            for (ScenePollOrQuizHost scenePollOrQuizHost : list) {
                PollAttach poll = scenePollOrQuizHost.getPoll();
                if (poll == null || (list2 = poll.polloptList) == null) {
                    pollOption = null;
                } else {
                    t.g(list2);
                    Iterator<T> it = list2.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                        PollOption pollOption2 = (PollOption) next;
                        if (!z6) {
                            if (pollOption2.votedValue > 0) {
                                break;
                            }
                        } else {
                            if (pollOption2.globalVotedValue > 0) {
                                break;
                            }
                        }
                    }
                    pollOption = (PollOption) next;
                }
                String strId = pollOption != null ? scenePollOrQuizHost.id() : null;
                if (strId != null) {
                    arrayList.add(strId);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                map.put((String) it2.next(), new ScenePlayRecord(2));
            }
        }
    }
}

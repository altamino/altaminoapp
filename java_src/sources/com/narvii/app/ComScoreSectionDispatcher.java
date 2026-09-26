package com.narvii.app;

import com.comscore.Analytics;
import java.util.HashMap;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class ComScoreSectionDispatcher {

    @NotNull
    public static final ComScoreSectionDispatcher INSTANCE = new ComScoreSectionDispatcher();

    @NotNull
    private static Section current;

    @NotNull
    private static Section previous;

    @NotNull
    public final Section getCurrent() {
        return current;
    }

    @NotNull
    public final Section getPrevious() {
        return previous;
    }

    public final void setCurrent(@NotNull Section section) {
        t.j(section, "<set-?>");
        current = section;
    }

    public final void setPrevious(@NotNull Section section) {
        t.j(section, "<set-?>");
        previous = section;
    }

    public enum Section {
        CHAT("Chat"),
        COMMUNITY("Community"),
        EXPLORE("Explore"),
        LIVE("Live"),
        NONE("");

        private static final /* synthetic */ z7.a $ENTRIES = z7.b.a(values());

        @NotNull
        private final String value;

        @NotNull
        public static z7.a<Section> getEntries() {
            return $ENTRIES;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }

        Section(String str) {
            this.value = str;
        }
    }

    static {
        Section section = Section.NONE;
        previous = section;
        current = section;
    }

    private final void dispatchSectionChange(Section section) {
        Section section2 = current;
        previous = section2;
        current = section;
        if (section2 != section) {
            HashMap map = new HashMap();
            map.put(ComScoreSectionDispatcherKt.CATEGORY, section.getValue());
            Analytics.notifyViewEvent(map);
        }
    }

    public final void sectionChangeToChat() {
        dispatchSectionChange(Section.CHAT);
    }

    public final void sectionChangeToCommunity() {
        dispatchSectionChange(Section.COMMUNITY);
    }

    public final void sectionChangeToExplore() {
        dispatchSectionChange(Section.EXPLORE);
    }

    public final void sectionChangeToLive() {
        dispatchSectionChange(Section.LIVE);
    }

    public final void sectionChangeToNone() {
        dispatchSectionChange(Section.NONE);
    }

    private ComScoreSectionDispatcher() {
    }
}

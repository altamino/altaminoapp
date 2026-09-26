package androidx.compose.foundation.text;

import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import e8.l;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class KeyMappingKt {

    @NotNull
    private static final KeyMapping defaultKeyMapping;

    @NotNull
    public static final KeyMapping b() {
        return defaultKeyMapping;
    }

    static {
        final KeyMapping keyMappingA = a(new g0() { // from class: androidx.compose.foundation.text.KeyMappingKt$defaultKeyMapping$1
            @Override // kotlin.jvm.internal.g0, kotlin.reflect.KProperty1
            @Nullable
            public Object get(@Nullable Object obj) {
                return Boolean.valueOf(KeyEvent_androidKt.d(((KeyEvent) obj).f()));
            }
        });
        defaultKeyMapping = new KeyMapping() { // from class: androidx.compose.foundation.text.KeyMappingKt$defaultKeyMapping$2$1
            @Override // androidx.compose.foundation.text.KeyMapping
            @Nullable
            public KeyCommand a(@NotNull android.view.KeyEvent event) {
                t.j(event, "event");
                KeyCommand keyCommand = null;
                if (KeyEvent_androidKt.e(event) && KeyEvent_androidKt.d(event)) {
                    long jA = KeyEvent_androidKt.a(event);
                    MappedKeys mappedKeys = MappedKeys.INSTANCE;
                    if (Key.m(jA, mappedKeys.h())) {
                        keyCommand = KeyCommand.SELECT_LEFT_WORD;
                    } else if (Key.m(jA, mappedKeys.i())) {
                        keyCommand = KeyCommand.SELECT_RIGHT_WORD;
                    } else if (Key.m(jA, mappedKeys.j())) {
                        keyCommand = KeyCommand.SELECT_PREV_PARAGRAPH;
                    } else if (Key.m(jA, mappedKeys.g())) {
                        keyCommand = KeyCommand.SELECT_NEXT_PARAGRAPH;
                    }
                } else if (KeyEvent_androidKt.d(event)) {
                    long jA2 = KeyEvent_androidKt.a(event);
                    MappedKeys mappedKeys2 = MappedKeys.INSTANCE;
                    if (Key.m(jA2, mappedKeys2.h())) {
                        keyCommand = KeyCommand.LEFT_WORD;
                    } else if (Key.m(jA2, mappedKeys2.i())) {
                        keyCommand = KeyCommand.RIGHT_WORD;
                    } else if (Key.m(jA2, mappedKeys2.j())) {
                        keyCommand = KeyCommand.PREV_PARAGRAPH;
                    } else if (Key.m(jA2, mappedKeys2.g())) {
                        keyCommand = KeyCommand.NEXT_PARAGRAPH;
                    } else if (Key.m(jA2, mappedKeys2.l())) {
                        keyCommand = KeyCommand.DELETE_PREV_CHAR;
                    } else if (Key.m(jA2, mappedKeys2.f())) {
                        keyCommand = KeyCommand.DELETE_NEXT_WORD;
                    } else if (Key.m(jA2, mappedKeys2.c())) {
                        keyCommand = KeyCommand.DELETE_PREV_WORD;
                    } else if (Key.m(jA2, mappedKeys2.b())) {
                        keyCommand = KeyCommand.DESELECT;
                    }
                } else if (KeyEvent_androidKt.e(event)) {
                    long jA3 = KeyEvent_androidKt.a(event);
                    MappedKeys mappedKeys3 = MappedKeys.INSTANCE;
                    if (Key.m(jA3, mappedKeys3.o())) {
                        keyCommand = KeyCommand.SELECT_HOME;
                    } else if (Key.m(jA3, mappedKeys3.n())) {
                        keyCommand = KeyCommand.SELECT_END;
                    }
                }
                return keyCommand == null ? keyMappingA.a(event) : keyCommand;
            }
        };
    }

    @NotNull
    public static final KeyMapping a(@NotNull final l<? super KeyEvent, Boolean> shortcutModifier) {
        t.j(shortcutModifier, "shortcutModifier");
        return new KeyMapping() { // from class: androidx.compose.foundation.text.KeyMappingKt$commonKeyMapping$1
            @Override // androidx.compose.foundation.text.KeyMapping
            @Nullable
            public KeyCommand a(@NotNull android.view.KeyEvent event) {
                t.j(event, "event");
                if (shortcutModifier.invoke(KeyEvent.a(event)).booleanValue() && KeyEvent_androidKt.e(event)) {
                    if (Key.m(KeyEvent_androidKt.a(event), MappedKeys.INSTANCE.v())) {
                        return KeyCommand.REDO;
                    }
                    return null;
                }
                if (shortcutModifier.invoke(KeyEvent.a(event)).booleanValue()) {
                    long jA = KeyEvent_androidKt.a(event);
                    MappedKeys mappedKeys = MappedKeys.INSTANCE;
                    if (Key.m(jA, mappedKeys.d()) || Key.m(jA, mappedKeys.m())) {
                        return KeyCommand.COPY;
                    }
                    if (Key.m(jA, mappedKeys.t())) {
                        return KeyCommand.PASTE;
                    }
                    if (Key.m(jA, mappedKeys.u())) {
                        return KeyCommand.CUT;
                    }
                    if (Key.m(jA, mappedKeys.a())) {
                        return KeyCommand.SELECT_ALL;
                    }
                    if (Key.m(jA, mappedKeys.v())) {
                        return KeyCommand.UNDO;
                    }
                    return null;
                }
                if (KeyEvent_androidKt.d(event)) {
                    return null;
                }
                if (KeyEvent_androidKt.e(event)) {
                    long jA2 = KeyEvent_androidKt.a(event);
                    MappedKeys mappedKeys2 = MappedKeys.INSTANCE;
                    if (Key.m(jA2, mappedKeys2.h())) {
                        return KeyCommand.SELECT_LEFT_CHAR;
                    }
                    if (Key.m(jA2, mappedKeys2.i())) {
                        return KeyCommand.SELECT_RIGHT_CHAR;
                    }
                    if (Key.m(jA2, mappedKeys2.j())) {
                        return KeyCommand.SELECT_UP;
                    }
                    if (Key.m(jA2, mappedKeys2.g())) {
                        return KeyCommand.SELECT_DOWN;
                    }
                    if (Key.m(jA2, mappedKeys2.q())) {
                        return KeyCommand.SELECT_PAGE_UP;
                    }
                    if (Key.m(jA2, mappedKeys2.p())) {
                        return KeyCommand.SELECT_PAGE_DOWN;
                    }
                    if (Key.m(jA2, mappedKeys2.o())) {
                        return KeyCommand.SELECT_LINE_START;
                    }
                    if (Key.m(jA2, mappedKeys2.n())) {
                        return KeyCommand.SELECT_LINE_END;
                    }
                    if (Key.m(jA2, mappedKeys2.m())) {
                        return KeyCommand.PASTE;
                    }
                    return null;
                }
                long jA3 = KeyEvent_androidKt.a(event);
                MappedKeys mappedKeys3 = MappedKeys.INSTANCE;
                if (Key.m(jA3, mappedKeys3.h())) {
                    return KeyCommand.LEFT_CHAR;
                }
                if (Key.m(jA3, mappedKeys3.i())) {
                    return KeyCommand.RIGHT_CHAR;
                }
                if (Key.m(jA3, mappedKeys3.j())) {
                    return KeyCommand.UP;
                }
                if (Key.m(jA3, mappedKeys3.g())) {
                    return KeyCommand.DOWN;
                }
                if (Key.m(jA3, mappedKeys3.q())) {
                    return KeyCommand.PAGE_UP;
                }
                if (Key.m(jA3, mappedKeys3.p())) {
                    return KeyCommand.PAGE_DOWN;
                }
                if (Key.m(jA3, mappedKeys3.o())) {
                    return KeyCommand.LINE_START;
                }
                if (Key.m(jA3, mappedKeys3.n())) {
                    return KeyCommand.LINE_END;
                }
                if (Key.m(jA3, mappedKeys3.k())) {
                    return KeyCommand.NEW_LINE;
                }
                if (Key.m(jA3, mappedKeys3.c())) {
                    return KeyCommand.DELETE_PREV_CHAR;
                }
                if (Key.m(jA3, mappedKeys3.f())) {
                    return KeyCommand.DELETE_NEXT_CHAR;
                }
                if (Key.m(jA3, mappedKeys3.r())) {
                    return KeyCommand.PASTE;
                }
                if (Key.m(jA3, mappedKeys3.e())) {
                    return KeyCommand.CUT;
                }
                if (Key.m(jA3, mappedKeys3.s())) {
                    return KeyCommand.TAB;
                }
                return null;
            }
        };
    }
}

#!/usr/bin/env python3
"""
Patch v3 for message editing (websocket). Run AFTER patch_edit_message.py and patch_edit_v2.py.

Websocket event t=1000 whose chatMessage has isEdited == true is treated as an edit:
  1. ChatService.onWsMessage: such an event goes ONLY to the thread-level receptor
     (open chat). It is not sent to the global list, community tabs/badges and it does not
     touch the unread table.
  2. ChatListFragment.onNewChatMessage: for such an event the message with the same
     messageId is found in the adapter, its text/isEdited are replaced and the list is
     refreshed. If the message is not loaded, the event is ignored (no duplicate at the bottom).
  3. SROverlayMainFragment (video-chat overlay) ignores such events instead of adding
     a "new" message.
  4. The " (edited)" marker in the bubble is replaced with a pencil.

Server side: the websocket message must contain "isEdited": true for edits
(same messageObj as in the HTTP answer).

Usage (from the project root):
    python3 patch_edit_ws.py
    python3 patch_edit_ws.py --marker '\\u270f\\ufe0f'   # emoji pencil instead of the outline one
    python3 patch_edit_ws.py --root /path/to/project
Safe to run twice. Undo: git checkout .
"""
import argparse
import glob
import os
import re
import sys

SERVICE = "smali/com/narvii/chat/core/ChatService.smali"
LIST_FRAGMENT = "smali_classes2/com/narvii/chat/ChatListFragment.smali"
ADAPTER = "smali_classes2/com/narvii/chat/ChatListFragment$Adapter.smali"
SR_OVERLAY = "smali_classes2/com/narvii/chat/screenroom/overlay/SROverlayMainFragment.smali"
BUBBLE = "smali_classes2/com/narvii/chat/ChatBubbleView.smali"


class PatchError(Exception):
    pass


def read(root, rel):
    p = os.path.join(root, rel)
    if not os.path.isfile(p):
        raise PatchError("file not found: " + rel)
    with open(p, encoding="utf-8", newline="") as fh:
        return fh.read()


def write(root, rel, text):
    with open(os.path.join(root, rel), "w", encoding="utf-8", newline="") as fh:
        fh.write(text)


def sub_once(text, pattern, repl_fn, what, flags=0):
    rx = re.compile(pattern, flags)
    n = len(rx.findall(text))
    if n != 1:
        raise PatchError("%s: anchor found %d times (expected 1)" % (what, n))
    return rx.sub(repl_fn, text, count=1)


def require_is_edited(root):
    found = sorted(glob.glob(os.path.join(root, "smali*", "com", "narvii", "model", "ChatMessage.smali")))
    if len(found) != 1:
        raise PatchError("ChatMessage.smali: found %d files" % len(found))
    with open(found[0], encoding="utf-8") as fh:
        if ".field public isEdited:Z" not in fh.read():
            raise PatchError("ChatMessage has no isEdited field: run patch_edit_v2.py first")


# ------------------------------------------------------------------ 1. ChatService

WS_HOOK = """    iget-object v5, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v5, :cond_ws_not_edit

    iget-boolean v5, v5, Lcom/narvii/model/ChatMessage;->isEdited:Z

    if-eqz v5, :cond_ws_not_edit

    invoke-direct {p0, v3, p1}, Lcom/narvii/chat/core/ChatService;->dispatchChatMessageListChange(Ljava/lang/String;Lcom/narvii/chat/util/ChatMessageDto;)V

    goto/16 :goto_7

    :cond_ws_not_edit
"""


def step_service(root):
    require_is_edited(root)
    t = read(root, SERVICE)
    if "cond_ws_not_edit" in t:
        return "skip (already patched)"
    m = re.search(
        r"\.method public onWsMessage\(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;\)V.*?\n\.end method",
        t, re.DOTALL)
    if not m:
        raise PatchError("ChatService.onWsMessage not found")
    body = sub_once(
        m.group(0),
        r"(:goto_5\n[ \t]*if-eqz p1, :cond_12\n)",
        lambda mm: mm.group(1) + "\n" + WS_HOOK,
        "ChatService.onWsMessage (:goto_5 / if-eqz p1, :cond_12)",
    )
    t = t[:m.start()] + body + t[m.end():]
    write(root, SERVICE, t)
    return "ok"


# ------------------------------------------------------------------ 2. open chat

FRAGMENT_HOOK = """
    iget-object p1, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz p1, :cond_ws_normal

    iget-boolean v0, p1, Lcom/narvii/model/ChatMessage;->isEdited:Z

    if-eqz v0, :cond_ws_normal

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

    if-eqz v0, :cond_ws_done

    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->applyEditedMessage(Lcom/narvii/model/ChatMessage;)V

    :cond_ws_done
    return-void

    :cond_ws_normal
"""

ADAPTER_METHOD = """
.method applyEditedMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 6

    if-eqz p1, :loop_end

    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    if-eqz v0, :loop_end

    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :loop_end

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :loop_start
    if-ge v3, v2, :loop_end

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/narvii/model/ChatMessage;

    if-eqz v5, :loop_next

    check-cast v4, Lcom/narvii/model/ChatMessage;

    iget-object v5, v4, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :loop_next

    iget-object v5, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    iput-object v5, v4, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/narvii/model/ChatMessage;->isEdited:Z

    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    return-void

    :loop_next
    add-int/lit8 v3, v3, 0x1

    goto :loop_start

    :loop_end
    return-void
.end method
"""


def step_open_chat(root):
    require_is_edited(root)
    t = read(root, LIST_FRAGMENT)
    a = read(root, ADAPTER)
    if "cond_ws_normal" in t and "applyEditedMessage" in a:
        return "skip (already patched)"
    if "cond_ws_normal" not in t:
        t = sub_once(
            t,
            r"(\.method public onNewChatMessage\(ILcom/narvii/chat/util/ChatMessageDto;\)V\n[ \t]*\.locals \d+\n)",
            lambda m: m.group(1) + FRAGMENT_HOOK,
            "ChatListFragment.onNewChatMessage",
        )
    if "applyEditedMessage" not in a:
        a = a.rstrip("\n") + "\n" + ADAPTER_METHOD
    write(root, LIST_FRAGMENT, t)
    write(root, ADAPTER, a)
    return "ok"


# ------------------------------------------------------------------ 3. SR overlay

SR_HOOK = """
    iget-object p1, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz p1, :cond_sr_go

    iget-boolean p1, p1, Lcom/narvii/model/ChatMessage;->isEdited:Z

    if-eqz p1, :cond_sr_go

    return-void

    :cond_sr_go
"""


def step_overlay(root):
    require_is_edited(root)
    t = read(root, SR_OVERLAY)
    if "cond_sr_go" in t:
        return "skip (already patched)"
    t = sub_once(
        t,
        r"(\.method public onNewChatMessage\(ILcom/narvii/chat/util/ChatMessageDto;\)V\n[ \t]*\.locals 0\n)",
        lambda m: m.group(1) + SR_HOOK,
        "SROverlayMainFragment.onNewChatMessage",
    )
    write(root, SR_OVERLAY, t)
    return "ok"


# ------------------------------------------------------------------ 4. pencil

def step_marker(root, marker):
    t = read(root, BUBBLE)
    if "markEdited" not in t:
        raise PatchError("ChatBubbleView has no markEdited: run patch_edit_v2.py first")
    new = 'const-string v3, " %s"' % marker
    old = 'const-string v3, " (edited)"'
    if new in t:
        return "skip (already patched)"
    if old not in t:
        return "skip (marker text was customized, left as is)"
    t = t.replace(old, new, 1)
    write(root, BUBBLE, t)
    return "ok"


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--root", default=".", help="project root (default: current dir)")
    ap.add_argument("--marker", default="\\u270e",
                    help="smali escape of the marker char, default \\u270e (pencil); "
                         "emoji pencil: \\u270f\\ufe0f")
    args = ap.parse_args()

    steps = [
        ("ChatService.onWsMessage: edit -> thread only", step_service),
        ("ChatListFragment: update message in place", step_open_chat),
        ("SROverlayMainFragment: ignore edits", step_overlay),
        ("bubble marker -> pencil", lambda r: step_marker(r, args.marker)),
    ]
    failed = False
    for name, fn in steps:
        try:
            print("%-46s %s" % (name, fn(args.root)))
        except PatchError as e:
            failed = True
            print("%-46s FAILED: %s" % (name, e))
    if failed:
        print("\nSome steps failed (their files were NOT changed). Send me this output.")
        sys.exit(1)
    print("\nDone. Next: make build && make install")


if __name__ == "__main__":
    main()
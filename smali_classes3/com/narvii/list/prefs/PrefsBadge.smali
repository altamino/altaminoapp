.class public Lcom/narvii/list/prefs/PrefsBadge;
.super Lcom/narvii/list/prefs/PrefsEntry;
.source "PrefsBadge.java"


# instance fields
.field public badgeBgResId:I

.field public count:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsEntry;-><init>()V

    .line 12
    iput p1, p0, Lcom/narvii/list/prefs/PrefsItem;->id:I

    .line 13
    iput p2, p0, Lcom/narvii/list/prefs/PrefsBadge;->count:I

    return-void
.end method

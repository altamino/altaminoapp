.class public Lcom/narvii/list/prefs/PrefsBadge;
.super Lcom/narvii/list/prefs/PrefsEntry;
.source "SourceFile"


# instance fields
.field public badgeBgResId:I

.field public count:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsEntry;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/list/prefs/PrefsItem;->id:I

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/list/prefs/PrefsBadge;->count:I

    .line 8
    return-void
.end method

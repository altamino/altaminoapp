.class public Lcom/narvii/list/prefs/PrefsMargin;
.super Lcom/narvii/list/prefs/PrefsItem;
.source "SourceFile"


# instance fields
.field public marginSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    iput p1, p0, Lcom/narvii/list/prefs/PrefsMargin;->marginSize:I

    return-void
.end method

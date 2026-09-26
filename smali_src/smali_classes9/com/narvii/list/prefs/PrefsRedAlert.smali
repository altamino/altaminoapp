.class public Lcom/narvii/list/prefs/PrefsRedAlert;
.super Lcom/narvii/list/prefs/PrefsEntry;
.source "SourceFile"


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 4
    .line 5
    sget p1, Lcom/narvii/lib/R$drawable;->ic_security_level_danger:I

    .line 6
    .line 7
    iput p1, p0, Lcom/narvii/list/prefs/PrefsItem;->rightIconResId:I

    .line 8
    return-void
.end method

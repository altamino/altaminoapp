.class public Lcom/narvii/list/prefs/PrefsRedAlert;
.super Lcom/narvii/list/prefs/PrefsEntry;
.source "PrefsRedAlert.java"


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 14
    sget p1, Lcom/narvii/lib/R$drawable;->ic_security_level_danger:I

    iput p1, p0, Lcom/narvii/list/prefs/PrefsItem;->rightIconResId:I

    return-void
.end method

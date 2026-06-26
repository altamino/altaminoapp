.class public Lcom/narvii/list/prefs/PrefsDescription;
.super Lcom/narvii/list/prefs/PrefsItem;
.source "PrefsDescription.java"


# instance fields
.field public final text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/narvii/list/prefs/PrefsDescription;->text:Ljava/lang/CharSequence;

    return-void
.end method

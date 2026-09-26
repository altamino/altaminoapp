.class public Lcom/narvii/list/prefs/PrefsDescription;
.super Lcom/narvii/list/prefs/PrefsItem;
.source "SourceFile"


# instance fields
.field public final text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/list/prefs/PrefsDescription;->text:Ljava/lang/CharSequence;

    .line 6
    return-void
.end method

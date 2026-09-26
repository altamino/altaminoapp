.class public Lcom/narvii/list/prefs/PrefsToggle;
.super Lcom/narvii/list/prefs/PrefsItem;
.source "SourceFile"


# static fields
.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_SMALL:I = 0x1


# instance fields
.field public callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/list/prefs/PrefsToggle;",
            ">;"
        }
    .end annotation
.end field

.field public mode:I

.field public on:Z

.field public textSingleLine:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/list/prefs/PrefsToggle;->textSingleLine:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/list/prefs/PrefsToggle;->textSingleLine:Z

    iput p1, p0, Lcom/narvii/list/prefs/PrefsItem;->id:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/list/prefs/PrefsToggle;->textSingleLine:Z

    iput p1, p0, Lcom/narvii/list/prefs/PrefsItem;->id:I

    iput-object p2, p0, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    iput p3, p0, Lcom/narvii/list/prefs/PrefsToggle;->mode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsItem;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/list/prefs/PrefsToggle;->textSingleLine:Z

    iput-object p1, p0, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setTextSingleLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/list/prefs/PrefsToggle;->textSingleLine:Z

    return-void
.end method

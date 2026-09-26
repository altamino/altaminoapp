.class final Lcom/google/firebase/sessions/x$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/firebase/sessions/x$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SESSION_ID:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/sessions/x$c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/sessions/x$c;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/sessions/x$c;->INSTANCE:Lcom/google/firebase/sessions/x$c;

    .line 8
    .line 9
    const-string v0, "session_id"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->f(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sput-object v0, Lcom/google/firebase/sessions/x$c;->SESSION_ID:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/x$c;->SESSION_ID:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

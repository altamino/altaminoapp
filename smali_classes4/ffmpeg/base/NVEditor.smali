.class public final Lffmpeg/base/NVEditor;
.super Ljava/lang/Object;
.source "NVEditor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lffmpeg/base/NVEditor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lffmpeg/base/NVEditor$Companion;

.field public static final TAG:Ljava/lang/String; = "NVEditor_Log"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lffmpeg/base/NVEditor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lffmpeg/base/NVEditor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lffmpeg/base/NVEditor;->Companion:Lffmpeg/base/NVEditor$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

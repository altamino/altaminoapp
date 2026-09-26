.class final synthetic Lcom/google/firebase/sessions/d0$a;
.super Lkotlin/jvm/internal/q;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/d0;-><init>(Lcom/google/firebase/sessions/k0;Le8/a;ILkotlin/jvm/internal/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/q;",
        "Le8/a<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/firebase/sessions/d0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/d0$a;

    invoke-direct {v0}, Lcom/google/firebase/sessions/d0$a;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/d0$a;->INSTANCE:Lcom/google/firebase/sessions/d0$a;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const-class v2, Ljava/util/UUID;

    const-string v3, "randomUUID"

    const-string v4, "randomUUID()Ljava/util/UUID;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/q;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/UUID;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/sessions/d0$a;->c()Ljava/util/UUID;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

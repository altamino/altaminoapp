.class final Ly/e$b;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Ljava/security/Signature;",
        ">;"
    }
.end annotation


# static fields
.field public static final q:Ly/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ly/e$b;

    invoke-direct {v0}, Ly/e$b;-><init>()V

    sput-object v0, Ly/e$b;->q:Ly/e$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/security/Signature;
    .locals 1

    .line 1
    .line 2
    const-string v0, "SHA256withECDSA"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ly/e$b;->b()Ljava/security/Signature;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

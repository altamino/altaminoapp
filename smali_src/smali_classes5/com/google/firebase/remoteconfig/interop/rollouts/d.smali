.class public abstract Lcom/google/firebase/remoteconfig/interop/rollouts/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/interop/rollouts/d$a;
    }
.end annotation


# static fields
.field private static final PARAMETER_KEY:Ljava/lang/String; = "parameterKey"

.field private static final PARAMETER_VALUE:Ljava/lang/String; = "parameterValue"

.field public static final ROLLOUT_ASSIGNMENT_JSON_ENCODER:Lj4/a;

.field private static final ROLLOUT_ID:Ljava/lang/String; = "rolloutId"

.field private static final TEMPLATE_VERSION:Ljava/lang/String; = "templateVersion"

.field private static final VARIANT_ID:Ljava/lang/String; = "variantId"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/encoders/json/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/encoders/json/d;-><init>()V

    .line 6
    .line 7
    sget-object v1, Lcom/google/firebase/remoteconfig/interop/rollouts/a;->CONFIG:Lk4/a;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/json/d;->j(Lk4/a;)Lcom/google/firebase/encoders/json/d;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/firebase/encoders/json/d;->i()Lj4/a;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sput-object v0, Lcom/google/firebase/remoteconfig/interop/rollouts/d;->ROLLOUT_ASSIGNMENT_JSON_ENCODER:Lj4/a;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a()Lcom/google/firebase/remoteconfig/interop/rollouts/d$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/remoteconfig/interop/rollouts/b$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/interop/rollouts/b$b;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract c()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract d()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract e()J
.end method

.method public abstract f()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

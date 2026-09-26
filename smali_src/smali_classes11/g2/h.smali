.class public abstract Lg2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# static fields
.field private static final DEFAULT_BACKEND_NAME:Ljava/lang/String; = "cct"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;Lm2/a;Lm2/a;Ljava/lang/String;)Lg2/h;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lg2/c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2, p3}, Lg2/c;-><init>(Landroid/content/Context;Lm2/a;Lm2/a;Ljava/lang/String;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract b()Landroid/content/Context;
.end method

.method public abstract c()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract d()Lm2/a;
.end method

.method public abstract e()Lm2/a;
.end method

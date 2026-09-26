.class public final Ll5/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final count:I

.field private final dataCodewords:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Ll5/c$a;->count:I

    .line 6
    .line 7
    iput p2, p0, Ll5/c$a;->dataCodewords:I

    .line 8
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Ll5/c$a;->count:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Ll5/c$a;->dataCodewords:I

    return v0
.end method

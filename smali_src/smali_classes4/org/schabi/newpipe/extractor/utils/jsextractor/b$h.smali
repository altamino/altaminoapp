.class public Lorg/schabi/newpipe/extractor/utils/jsextractor/b$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/utils/jsextractor/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final end:I

.field public final start:I

.field public final token:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/c;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$h;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 6
    .line 7
    iput p2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$h;->start:I

    .line 8
    .line 9
    iput p3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$h;->end:I

    .line 10
    return-void
.end method

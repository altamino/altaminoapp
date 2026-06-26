.class public interface abstract Lcom/google/android/exoplayer2/upstream/HttpDataSource;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;,
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;,
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;,
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;,
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;,
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    }
.end annotation


# static fields
.field public static final REJECT_PAYWALL_TYPES:Lcom/google/android/exoplayer2/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 217
    sget-object v0, Lcom/google/android/exoplayer2/upstream/-$$Lambda$HttpDataSource$fz-i4cgBB9tTB1JUdq8hmlAPFIw;->INSTANCE:Lcom/google/android/exoplayer2/upstream/-$$Lambda$HttpDataSource$fz-i4cgBB9tTB1JUdq8hmlAPFIw;

    sput-object v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource;->REJECT_PAYWALL_TYPES:Lcom/google/android/exoplayer2/util/Predicate;

    return-void
.end method

package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.util.VisibleForTesting;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.util.DateUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@VisibleForTesting
/* loaded from: classes2.dex */
public final class zzal {
    static zzq zzfq;

    @VisibleForTesting
    private static Boolean zzfx;
    private static volatile zzby zzl;
    static List<zza<Integer>> zzfr = new ArrayList();
    static List<zza<Long>> zzfs = new ArrayList();
    static List<zza<Boolean>> zzft = new ArrayList();
    static List<zza<String>> zzfu = new ArrayList();
    static List<zza<Double>> zzfv = new ArrayList();
    private static final com.google.android.gms.internal.measurement.zzdc zzfw = new com.google.android.gms.internal.measurement.zzdc(com.google.android.gms.internal.measurement.zzcv.zzcd("com.google.android.gms.measurement"));
    private static zza<Boolean> zzfy = zza.zza("measurement.log_third_party_store_events_enabled", false, false);
    private static zza<Boolean> zzfz = zza.zza("measurement.log_installs_enabled", false, false);
    private static zza<Boolean> zzga = zza.zza("measurement.log_upgrades_enabled", false, false);
    public static zza<Boolean> zzgb = zza.zza("measurement.log_androidId_enabled", false, false);
    public static zza<Boolean> zzgc = zza.zza("measurement.upload_dsid_enabled", false, false);
    public static zza<String> zzgd = zza.zzc("measurement.log_tag", "FA", "FA-SVC");
    public static zza<Long> zzge = zza.zza("measurement.ad_id_cache_time", 10000L, 10000L);
    public static zza<Long> zzgf = zza.zza("measurement.monitoring.sample_period_millis", DateUtils.ONE_DAY, DateUtils.ONE_DAY);
    public static zza<Long> zzgg = zza.zza("measurement.config.cache_time", DateUtils.ONE_DAY, 3600000L);
    public static zza<String> zzgh = zza.zzc("measurement.config.url_scheme", "https", "https");
    public static zza<String> zzgi = zza.zzc("measurement.config.url_authority", "app-measurement.com", "app-measurement.com");
    public static zza<Integer> zzgj = zza.zzb("measurement.upload.max_bundles", 100, 100);
    public static zza<Integer> zzgk = zza.zzb("measurement.upload.max_batch_size", 65536, 65536);
    public static zza<Integer> zzgl = zza.zzb("measurement.upload.max_bundle_size", 65536, 65536);
    public static zza<Integer> zzgm = zza.zzb("measurement.upload.max_events_per_bundle", 1000, 1000);
    public static zza<Integer> zzgn = zza.zzb("measurement.upload.max_events_per_day", 100000, 100000);
    public static zza<Integer> zzgo = zza.zzb("measurement.upload.max_error_events_per_day", 1000, 1000);
    public static zza<Integer> zzgp = zza.zzb("measurement.upload.max_public_events_per_day", DefaultLoadControl.DEFAULT_MAX_BUFFER_MS, DefaultLoadControl.DEFAULT_MAX_BUFFER_MS);
    public static zza<Integer> zzgq = zza.zzb("measurement.upload.max_conversions_per_day", 500, 500);
    public static zza<Integer> zzgr = zza.zzb("measurement.upload.max_realtime_events_per_day", 10, 10);
    public static zza<Integer> zzgs = zza.zzb("measurement.store.max_stored_events_per_app", 100000, 100000);
    public static zza<String> zzgt = zza.zzc("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a");
    public static zza<Long> zzgu = zza.zza("measurement.upload.backoff_period", 43200000L, 43200000L);
    public static zza<Long> zzgv = zza.zza("measurement.upload.window_interval", 3600000L, 3600000L);
    public static zza<Long> zzgw = zza.zza("measurement.upload.interval", 3600000L, 3600000L);
    public static zza<Long> zzgx = zza.zza("measurement.upload.realtime_upload_interval", 10000L, 10000L);
    public static zza<Long> zzgy = zza.zza("measurement.upload.debug_upload_interval", 1000L, 1000L);
    public static zza<Long> zzgz = zza.zza("measurement.upload.minimum_delay", 500L, 500L);
    public static zza<Long> zzha = zza.zza("measurement.alarm_manager.minimum_interval", DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
    public static zza<Long> zzhb = zza.zza("measurement.upload.stale_data_deletion_interval", DateUtils.ONE_DAY, DateUtils.ONE_DAY);
    public static zza<Long> zzhc = zza.zza("measurement.upload.refresh_blacklisted_config_interval", 604800000L, 604800000L);
    public static zza<Long> zzhd = zza.zza("measurement.upload.initial_upload_delay_time", ScenePollPlayView.POLL_COUNT_DOWN_MS, ScenePollPlayView.POLL_COUNT_DOWN_MS);
    public static zza<Long> zzhe = zza.zza("measurement.upload.retry_time", 1800000L, 1800000L);
    public static zza<Integer> zzhf = zza.zzb("measurement.upload.retry_count", 6, 6);
    public static zza<Long> zzhg = zza.zza("measurement.upload.max_queue_time", 2419200000L, 2419200000L);
    public static zza<Integer> zzhh = zza.zzb("measurement.lifetimevalue.max_currency_tracked", 4, 4);
    public static zza<Integer> zzhi = zza.zzb("measurement.audience.filter_result_max_count", 200, 200);
    public static zza<Long> zzhj = zza.zza("measurement.service_client.idle_disconnect_millis", DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
    public static zza<Boolean> zzhk = zza.zza("measurement.test.boolean_flag", false, false);
    public static zza<String> zzhl = zza.zzc("measurement.test.string_flag", "---", "---");
    public static zza<Long> zzhm = zza.zza("measurement.test.long_flag", -1L, -1L);
    public static zza<Integer> zzhn = zza.zzb("measurement.test.int_flag", -2, -2);
    public static zza<Double> zzho = zza.zza("measurement.test.double_flag", -3.0d, -3.0d);
    public static zza<Integer> zzhp = zza.zzb("measurement.experiment.max_ids", 50, 50);
    public static zza<Boolean> zzhq = zza.zza("measurement.lifetimevalue.user_engagement_tracking_enabled", true, true);
    public static zza<Boolean> zzhr = zza.zza("measurement.audience.complex_param_evaluation", true, true);
    public static zza<Boolean> zzhs = zza.zza("measurement.validation.internal_limits_internal_event_params", false, false);
    public static zza<Boolean> zzht = zza.zza("measurement.quality.unsuccessful_update_retry_counter", true, true);
    public static zza<Boolean> zzhu = zza.zza("measurement.iid.disable_on_collection_disabled", true, true);
    public static zza<Boolean> zzhv = zza.zza("measurement.app_launch.call_only_when_enabled", true, true);
    public static zza<Boolean> zzhw = zza.zza("measurement.run_on_worker_inline", true, true);
    public static zza<Boolean> zzhx = zza.zza("measurement.audience.dynamic_filters", true, true);
    public static zza<Boolean> zzhy = zza.zza("measurement.reset_analytics.persist_time", false, false);
    public static zza<Boolean> zzhz = zza.zza("measurement.validation.value_and_currency_params", false, false);
    public static zza<Boolean> zzia = zza.zza("measurement.sampling.time_zone_offset_enabled", false, false);
    public static zza<Boolean> zzib = zza.zza("measurement.referrer.enable_logging_install_referrer_cmp_from_apk", false, false);
    public static zza<Boolean> zzic = zza.zza("measurement.fetch_config_with_admob_app_id", true, true);
    public static zza<Boolean> zzid = zza.zza("measurement.client.sessions.session_id_enabled", false, false);
    public static zza<Boolean> zzie = zza.zza("measurement.service.sessions.session_number_enabled", false, false);
    public static zza<Boolean> zzif = zza.zza("measurement.client.sessions.immediate_start_enabled", false, false);
    public static zza<Boolean> zzig = zza.zza("measurement.client.sessions.background_sessions_enabled", false, false);
    public static zza<Boolean> zzih = zza.zza("measurement.client.sessions.remove_expired_session_properties_enabled", false, false);
    public static zza<Boolean> zzii = zza.zza("measurement.service.sessions.session_number_backfill_enabled", false, false);
    public static zza<Boolean> zzij = zza.zza("measurement.service.sessions.remove_disabled_session_number", false, false);
    public static zza<Boolean> zzik = zza.zza("measurement.collection.firebase_global_collection_flag_enabled", true, true);
    public static zza<Boolean> zzil = zza.zza("measurement.collection.efficient_engagement_reporting_enabled", false, false);
    public static zza<Boolean> zzim = zza.zza("measurement.collection.redundant_engagement_removal_enabled", false, false);
    public static zza<Boolean> zzin = zza.zza("measurement.personalized_ads_signals_collection_enabled", false, false);
    public static zza<Boolean> zzio = zza.zza("measurement.collection.init_params_control_enabled", true, true);
    public static zza<Boolean> zzip = zza.zza("measurement.upload.disable_is_uploader", false, false);
    public static zza<Boolean> zziq = zza.zza("measurement.experiment.enable_experiment_reporting", false, false);
    public static zza<Boolean> zzir = zza.zza("measurement.collection.log_event_and_bundle_v2", true, true);
    public static zza<Boolean> zzis = zza.zza("measurement.collection.null_empty_event_name_fix", true, true);
    public static zza<Boolean> zzit = zza.zza("measurement.audience.sequence_filters", false, false);
    public static zza<Boolean> zziu = zza.zza("measurement.quality.checksum", false, false);
    public static zza<Boolean> zziv = zza.zza("measurement.module.collection.conditionally_omit_admob_app_id", true, true);
    public static zza<Boolean> zziw = zza.zza("measurement.sdk.dynamite.use_dynamite", false, false);
    public static zza<Boolean> zzix = zza.zza("measurement.sdk.dynamite.allow_remote_dynamite", false, false);
    public static zza<Boolean> zziy = zza.zza("measurement.sdk.collection.validate_param_names_alphabetical", false, false);
    private static zza<Boolean> zziz = zza.zza("measurement.collection.event_safelist", false, false);
    private static zza<Boolean> zzja = zza.zza("measurement.service.audience.scoped_filters", false, false);

    public static Map<String, String> zzk(Context context) {
        return com.google.android.gms.internal.measurement.zzcl.zza(context.getContentResolver(), com.google.android.gms.internal.measurement.zzcv.zzcd("com.google.android.gms.measurement")).zzjj();
    }

    @VisibleForTesting
    public static final class zza<V> {
        private com.google.android.gms.internal.measurement.zzcw<V> zzjb;
        private final V zzjc;
        private final V zzjd;
        private volatile V zzje;
        private final String zzjf;

        private zza(String str, V v, V v2) {
            this.zzjf = str;
            this.zzjd = v;
            this.zzjc = v2;
        }

        static zza<Boolean> zza(String str, boolean z, boolean z2) {
            zza<Boolean> zzaVar = new zza<>(str, Boolean.valueOf(z), Boolean.valueOf(z2));
            zzal.zzft.add(zzaVar);
            return zzaVar;
        }

        static zza<String> zzc(String str, String str2, String str3) {
            zza<String> zzaVar = new zza<>(str, str2, str3);
            zzal.zzfu.add(zzaVar);
            return zzaVar;
        }

        static zza<Long> zza(String str, long j, long j2) {
            zza<Long> zzaVar = new zza<>(str, Long.valueOf(j), Long.valueOf(j2));
            zzal.zzfs.add(zzaVar);
            return zzaVar;
        }

        static zza<Integer> zzb(String str, int i, int i2) {
            zza<Integer> zzaVar = new zza<>(str, Integer.valueOf(i), Integer.valueOf(i2));
            zzal.zzfr.add(zzaVar);
            return zzaVar;
        }

        static zza<Double> zza(String str, double d, double d2) {
            Double dValueOf = Double.valueOf(-3.0d);
            zza<Double> zzaVar = new zza<>(str, dValueOf, dValueOf);
            zzal.zzfv.add(zzaVar);
            return zzaVar;
        }

        public final String getKey() {
            return this.zzjf;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void zzai() {
            synchronized (zza.class) {
                for (zza<Boolean> zzaVar : zzal.zzft) {
                    com.google.android.gms.internal.measurement.zzdc zzdcVar = zzal.zzfw;
                    String str = ((zza) zzaVar).zzjf;
                    zzq zzqVar = zzal.zzfq;
                    ((zza) zzaVar).zzjb = (com.google.android.gms.internal.measurement.zzcw<V>) zzdcVar.zzb(str, ((zza) zzaVar).zzjd.booleanValue());
                }
                for (zza<String> zzaVar2 : zzal.zzfu) {
                    com.google.android.gms.internal.measurement.zzdc zzdcVar2 = zzal.zzfw;
                    String str2 = ((zza) zzaVar2).zzjf;
                    zzq zzqVar2 = zzal.zzfq;
                    ((zza) zzaVar2).zzjb = (com.google.android.gms.internal.measurement.zzcw<V>) zzdcVar2.zzt(str2, ((zza) zzaVar2).zzjd);
                }
                for (zza<Long> zzaVar3 : zzal.zzfs) {
                    com.google.android.gms.internal.measurement.zzdc zzdcVar3 = zzal.zzfw;
                    String str3 = ((zza) zzaVar3).zzjf;
                    zzq zzqVar3 = zzal.zzfq;
                    ((zza) zzaVar3).zzjb = (com.google.android.gms.internal.measurement.zzcw<V>) zzdcVar3.zze(str3, ((zza) zzaVar3).zzjd.longValue());
                }
                for (zza<Integer> zzaVar4 : zzal.zzfr) {
                    com.google.android.gms.internal.measurement.zzdc zzdcVar4 = zzal.zzfw;
                    String str4 = ((zza) zzaVar4).zzjf;
                    zzq zzqVar4 = zzal.zzfq;
                    ((zza) zzaVar4).zzjb = (com.google.android.gms.internal.measurement.zzcw<V>) zzdcVar4.zza(str4, ((zza) zzaVar4).zzjd.intValue());
                }
                for (zza<Double> zzaVar5 : zzal.zzfv) {
                    com.google.android.gms.internal.measurement.zzdc zzdcVar5 = zzal.zzfw;
                    String str5 = ((zza) zzaVar5).zzjf;
                    zzq zzqVar5 = zzal.zzfq;
                    ((zza) zzaVar5).zzjb = (com.google.android.gms.internal.measurement.zzcw<V>) zzdcVar5.zza(str5, ((zza) zzaVar5).zzjd.doubleValue());
                }
            }
        }

        public final V get(V v) throws IllegalStateException {
            if (v != null) {
                return v;
            }
            if (zzal.zzfq == null) {
                return this.zzjd;
            }
            if (zzq.isMainThread()) {
                return this.zzje == null ? this.zzjd : this.zzje;
            }
            synchronized (zza.class) {
                if (zzq.isMainThread()) {
                    throw new IllegalStateException("Tried to refresh flag cache on main thread or on package side.");
                }
                zzq zzqVar = zzal.zzfq;
                try {
                    for (zza<Boolean> zzaVar : zzal.zzft) {
                        zzaVar.zzje = (V) zzaVar.zzjb.get();
                    }
                    for (zza<String> zzaVar2 : zzal.zzfu) {
                        zzaVar2.zzje = (V) zzaVar2.zzjb.get();
                    }
                    for (zza<Long> zzaVar3 : zzal.zzfs) {
                        zzaVar3.zzje = (V) zzaVar3.zzjb.get();
                    }
                    for (zza<Integer> zzaVar4 : zzal.zzfr) {
                        zzaVar4.zzje = (V) zzaVar4.zzjb.get();
                    }
                    for (zza<Double> zzaVar5 : zzal.zzfv) {
                        zzaVar5.zzje = (V) zzaVar5.zzjb.get();
                    }
                } catch (SecurityException e) {
                    zzal.zza(e);
                }
            }
            try {
                return this.zzjb.get();
            } catch (SecurityException e2) {
                zzal.zza(e2);
                return this.zzjb.getDefaultValue();
            }
        }
    }

    static void zza(zzby zzbyVar) {
        zzl = zzbyVar;
    }

    @VisibleForTesting
    static void zza(Exception exc) throws IllegalStateException {
        if (zzl == null) {
            return;
        }
        Context context = zzl.getContext();
        if (zzfx == null) {
            zzfx = Boolean.valueOf(GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, 12451000) == 0);
        }
        if (zzfx.booleanValue()) {
            zzl.zzad().zzda().zza("Got Exception on PhenotypeFlag.get on Play device", exc);
        }
    }

    static void zza(zzq zzqVar) {
        zzfq = zzqVar;
        zza.zzai();
    }
}

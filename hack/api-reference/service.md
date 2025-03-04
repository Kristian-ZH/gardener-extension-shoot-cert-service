<p>Packages:</p>
<ul>
<li>
<a href="#service.cert.extensions.gardener.cloud%2fv1alpha1">service.cert.extensions.gardener.cloud/v1alpha1</a>
</li>
</ul>
<h2 id="service.cert.extensions.gardener.cloud/v1alpha1">service.cert.extensions.gardener.cloud/v1alpha1</h2>
<p>
<p>Package v1alpha1 contains the Certificate Shoot Service extension.</p>
</p>
Resource Types:
<ul><li>
<a href="#service.cert.extensions.gardener.cloud/v1alpha1.CertConfig">CertConfig</a>
</li></ul>
<h3 id="service.cert.extensions.gardener.cloud/v1alpha1.CertConfig">CertConfig
</h3>
<p>
<p>CertConfig configuration resource</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>apiVersion</code></br>
string</td>
<td>
<code>
service.cert.extensions.gardener.cloud/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>CertConfig</code></td>
</tr>
<tr>
<td>
<code>issuers</code></br>
<em>
<a href="#service.cert.extensions.gardener.cloud/v1alpha1.IssuerConfig">
[]IssuerConfig
</a>
</em>
</td>
<td>
<p>Issuers is the configuration for certificate issuers.</p>
</td>
</tr>
<tr>
<td>
<code>dnsChallengeOnShoot</code></br>
<em>
<a href="#service.cert.extensions.gardener.cloud/v1alpha1.DNSChallengeOnShoot">
DNSChallengeOnShoot
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>DNSChallengeOnShoot controls where the DNS entries for DNS01 challenges are created.
If not specified the DNS01 challenges are written to the control plane namespace on the seed.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="service.cert.extensions.gardener.cloud/v1alpha1.ACMEExternalAccountBinding">ACMEExternalAccountBinding
</h3>
<p>
(<em>Appears on:</em>
<a href="#service.cert.extensions.gardener.cloud/v1alpha1.IssuerConfig">IssuerConfig</a>)
</p>
<p>
<p>ACMEExternalAccountBinding is a reference to a CA external account of the ACME server.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>keyID</code></br>
<em>
string
</em>
</td>
<td>
<p>keyID is the ID of the CA key that the External Account is bound to.</p>
</td>
</tr>
<tr>
<td>
<code>keySecretName</code></br>
<em>
string
</em>
</td>
<td>
<p>KeySecretName is the secret name of the
Secret which holds the symmetric MAC key of the External Account Binding with data key &lsquo;hmacKey&rsquo;.
The secret key stored in the Secret <strong>must</strong> be un-padded, base64 URL
encoded data.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="service.cert.extensions.gardener.cloud/v1alpha1.DNSChallengeOnShoot">DNSChallengeOnShoot
</h3>
<p>
(<em>Appears on:</em>
<a href="#service.cert.extensions.gardener.cloud/v1alpha1.CertConfig">CertConfig</a>)
</p>
<p>
<p>DNSChallengeOnShoot is used to create DNS01 challenges on shoot and not on seed.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>enabled</code></br>
<em>
bool
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>namespace</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>dnsClass</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
</td>
</tr>
</tbody>
</table>
<h3 id="service.cert.extensions.gardener.cloud/v1alpha1.DNSSelection">DNSSelection
</h3>
<p>
(<em>Appears on:</em>
<a href="#service.cert.extensions.gardener.cloud/v1alpha1.IssuerConfig">IssuerConfig</a>)
</p>
<p>
<p>DNSSelection is a restriction on the domains to be allowed or forbidden for certificate requests</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>include</code></br>
<em>
[]string
</em>
</td>
<td>
<p>Include are domain names for which certificate requests are allowed (including any subdomains)</p>
</td>
</tr>
<tr>
<td>
<code>exclude</code></br>
<em>
[]string
</em>
</td>
<td>
<p>Exclude are domain names for which certificate requests are forbidden (including any subdomains)</p>
</td>
</tr>
</tbody>
</table>
<h3 id="service.cert.extensions.gardener.cloud/v1alpha1.IssuerConfig">IssuerConfig
</h3>
<p>
(<em>Appears on:</em>
<a href="#service.cert.extensions.gardener.cloud/v1alpha1.CertConfig">CertConfig</a>)
</p>
<p>
<p>IssuerConfig contains information for certificate issuers.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>name</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>server</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>email</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>requestsPerDayQuota</code></br>
<em>
int
</em>
</td>
<td>
<em>(Optional)</em>
<p>RequestsPerDayQuota sets quota for certificate requests per day</p>
</td>
</tr>
<tr>
<td>
<code>privateKeySecretName</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>PrivateKeySecretName is the secret name for the ACME private key.
If not provided, a new private key is generated.</p>
</td>
</tr>
<tr>
<td>
<code>externalAccountBinding</code></br>
<em>
<a href="#service.cert.extensions.gardener.cloud/v1alpha1.ACMEExternalAccountBinding">
ACMEExternalAccountBinding
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>ACMEExternalAccountBinding is a reference to a CA external account of the ACME server.</p>
</td>
</tr>
<tr>
<td>
<code>skipDNSChallengeValidation</code></br>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>SkipDNSChallengeValidation marks that this issuer does not validate DNS challenges.
In this case no DNS entries/records are created for a DNS Challenge and DNS propagation
is not checked.</p>
</td>
</tr>
<tr>
<td>
<code>domains</code></br>
<em>
<a href="#service.cert.extensions.gardener.cloud/v1alpha1.DNSSelection">
DNSSelection
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Domains optionally specifies domains allowed or forbidden for certificate requests</p>
</td>
</tr>
</tbody>
</table>
<hr/>
<p><em>
Generated with <a href="https://github.com/ahmetb/gen-crd-api-reference-docs">gen-crd-api-reference-docs</a>
</em></p>
